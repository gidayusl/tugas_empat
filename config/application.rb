require_relative 'boot'

require 'rails/all'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TugasEmpat
  class Application < Rails::Application
    config.paperclip_defaults = { 
      storage: :fog, fog_credentials: { 
        provider: "Local", local_root: "#{Rails.root}/public/upload_images"}, fog_directory: "", fog_host: "localhost"}
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
