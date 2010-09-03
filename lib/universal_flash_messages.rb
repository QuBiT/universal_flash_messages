module UniversalFlashMessages
   require 'universal_flash_messages/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
   require 'universal_flash_messages/controller_helpers'
   require 'universal_flash_messages/view_helpers'
   require 'universal_flash_messages/flash_types'
end