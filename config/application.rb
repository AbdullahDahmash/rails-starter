require_relative "boot"

require "rails"

%w(
  active_record/railtie
  active_storage/engine
  action_controller/railtie
  action_view/railtie
  action_mailer/railtie
  active_job/railtie
  action_cable/engine
  action_mailbox/engine
  action_text/engine
  rails/test_unit/railtie
).each do |railtie|
  begin
    require railtie
  rescue LoadError
  end
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module TransportScheduling
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.minio_access_key_id = ENV['MINIO_ACCESS_KEY_ID']

    config.minio_secret_access_key = ENV['MINIO_SECRET_ACCESS_KEY']

    config.minio_endpoint = ENV['MINIO_ENDPOINT']

    config.action_view.field_error_proc = ->(html_tag, instance) { html_tag.html_safe }

    config.active_job.queue_adapter = :resque

    config.i18n.default_locale = :ar

    config.beginning_of_week = :sunday

    config.autoload_paths += Dir[File.join(Rails.root, 'app', 'models', 'validators')]

  end
end
