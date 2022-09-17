module Asyncable
  extend ActiveSupport::Concern

  class_methods do
    def async_method method, options = {}
      alias_method :"#{method}_sync", :"#{method}"

      define_method(:"#{method}") do |*args|
        ActiveRecordInstanceMethodJob.set(**options).perform_later(self, method, *args)
      end
    end

    def async_method_unique_until_executing method, options = {}
      alias_method :"#{method}_sync", :"#{method}"

      define_method(:"#{method}") do |*args|
        ActiveRecordInstanceMethodJobUniqueUntilExecutingJob.set(**options).perform_later(self, method, *args)
      end
    end
  end
end
