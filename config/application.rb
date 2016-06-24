require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
# http://myronmars.to/n/dev-blog/2012/12/5-reasons-to-avoid-bundler-require
Bundler.require(*Rails.groups)

module PurpleComet2
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
