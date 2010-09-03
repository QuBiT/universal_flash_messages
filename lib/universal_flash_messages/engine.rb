require "universal_flash_messages"
require "rails"

module UniversalFlashMessages
  class Engine < Rails::Engine
    
    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
    
    rake_tasks do
      load File.expand_path(File.dirname(__FILE__) + '/../railties/tasks.rake')
    end

  end
end
