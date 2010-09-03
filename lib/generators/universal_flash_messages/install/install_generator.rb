require 'rails/generators'

module UniversalFlashMessages
  class InstallGenerator < Rails::Generators::Base
    desc "Copies universal_flash_messages.css to public/stylesheets/ and copies the images to public/images/universal_flash_messages"

    source_root File.join(File.dirname(__FILE__), 'templates')

    def self.banner
      "rails generate universal_flash_messages:install [options]"
    end

    def copy_files
      empty_directory 'config/initializers'
      template 'universal_flash_types.rb', 'config/initializers/universal_flash_messages.rb'

      empty_directory 'public/stylesheets'
      template 'universal_flash_messages.css', 'public/stylesheets/universal_flash_messages.css'

      empty_directory 'public/images'
      template 'error.png', 'public/images/universal_flash_messages/error.png'
      template 'info.png', 'public/images/universal_flash_messages/info.png'
      template 'success.png', 'public/images/universal_flash_messages/success.png'
      template 'warning.png', 'public/images/universal_flash_messages/warning.png'
    end
  end
end