require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Foodvsmovies
  class Application < Rails::Application
    config.i18n.load_path += Dir[config.root.join('frontend/components/**/*.yml')]
    config.autoload_paths << config.root.join('frontend/components')
    config.generators do |generate|
          generate.assets false
          generate.helper false
          generate.test_framework :test_unit, fixture: false
        end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.generators.template_engine = :slim
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
