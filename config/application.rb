require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WebItesm
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.assets.initialize_on_precompile = false
    config.secret_key_base = '4c170458d1921093c3beb07cca697400e7e588afb62b8a6605358dd1bad0a10850f60b62bb0fd5ec91624bd1b18eac9a478a6b70d9d566736c7a42d65513646a'
    config.time_zone = 'Mexico City'
  end
end
