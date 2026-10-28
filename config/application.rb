require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsBackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end
module YourAppName
  class Application < Rails::Application
    # ... your existing configuration lines ...

    # Fix Psych::AliasesNotEnabled error on Ruby 3.3+
    config.shared_automounts = true if respond_to?(:shared_automounts=)
    
    # Overwrite the default YAML parser behavior for database configuration
    initializer "fix_yaml_aliases", before: "active_record.initialize_database" do
      require 'yaml'
      # Forces Psych to accept YAML aliases globally across standard safe_load contexts
      if defined?(Psych) && Psych.respond_to?(:safe_load)
        module ::Psych
          class << self
            alias_method :original_safe_load, :safe_load
            def safe_load(yaml, *args, **kwargs)
              kwargs[:aliases] = true
              original_safe_load(yaml, *args, **kwargs)
            end
          end
        end
      end
    end

  end
end
