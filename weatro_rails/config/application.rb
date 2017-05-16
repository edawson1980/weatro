require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WeatroRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.middleware.insert_before 0, "Rack::Cors" do
<<<<<<< HEAD
          allow do
            origins '*'
            resource '*', :headers => :any, :methods => [:get, :post, :options, :put, :delete]
          end
        end
=======
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options, :put, :delete]
      end
    end
>>>>>>> 64309a3c9959b2bad34b597ab3d78da35b35a570


  end
end
