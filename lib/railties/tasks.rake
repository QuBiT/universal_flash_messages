namespace :universal_flash_messages do
  desc 'Outputs a list of currently recognized methods for flash messages'
  task :current_methods do
    puts "List of currently recognized methods:"
    puts "-------------------------------------------------------------"
    puts "Standard Flash (defined for the next request)"
    UniversalFlashMessages::FlashTypes.default_methods_hash.each do |key, value|
      puts "* #{key}"
    end
    puts "-------------------------------------------------------------"
    puts "Now Flash (alias flash.now) (defined for the current request)"
    UniversalFlashMessages::FlashTypes.now_methods_hash.each do |key, value|
      puts "* #{key}"
    end
    puts "-------------------------------------------------------------"
    puts "USAGE: method 'message'"
  end
end