require_relative "boot"

require "rails/all"



# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ScrapbookV2
  class Application < Rails::Application
    config.generators do |generate|
      generate.assets false
      generate.helper false
      generate.test_framework :test_unit, fixture: false
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    I18n.available_locales = [:en, :es]
    # config.i18n.default_locale = :es
    config.after_initialize do
      ActionText::ContentHelper.allowed_attributes.add 'style'
      ActionText::ContentHelper.allowed_attributes.add 'controls'
      ActionText::ContentHelper.allowed_attributes.add 'poster'
    
      ActionText::ContentHelper.allowed_tags.add 'video'
      ActionText::ContentHelper.allowed_tags.add 'audio'
      ActionText::ContentHelper.allowed_tags.add 'source'
      ActionText::ContentHelper.allowed_tags.add 'embed'
      ActionText::ContentHelper.allowed_tags.add 'iframe'
    end
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
