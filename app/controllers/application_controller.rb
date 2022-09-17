class ApplicationController < ActionController::Base
  default_form_builder AppFormBuilder
  protect_from_forgery prepend: true
	include Pagy::Backend
	include Sift
  include Resourceable
end
