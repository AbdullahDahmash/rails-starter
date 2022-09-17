class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  include Governable
  
  scope :unpaginate, ->() {
    offset(nil).limit(nil)
  }
end
