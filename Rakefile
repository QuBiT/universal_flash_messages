require 'rubygems'
require 'rake'
begin
  require "jeweler"
  Jeweler::Tasks.new do |gem|
    gem.name = "universal_flash_messages"
    gem.summary = "A gem that provides universal view and controller helpers for Rails 3"
    gem.description = "Allows to use individual flash types inside the controller and the view."
    gem.files = Dir["{lib}/**/*", "{config}/**/*"]
    gem.test_files = Dir["{test}/**/*"]
    gem.add_development_dependency "shoulda", ">= 2.11.3"
    gem.email = "roland.guem@gmail.com"
    gem.homepage = "http://github.com/QuBiT/universal_flash_helper"
    gem.authors = ["Roland Guem"]
    gem.post_install_message = %q{
_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_
    Thank you for installing universal_flash_messages.
    Please be sure to read the README and HISTORY on
        http://github.com/QuBiT/universal_flash_messages
    for important information about this release.
_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_()_
    }
  end
rescue
  puts "Jeweler or one of its dependencies is not installed."
end

ENV['BUNDLE_GEMFILE'] = File.dirname(__FILE__) + '/test/rails_root/Gemfile'

#require 'rake'
require 'rake/testtask'
require 'cucumber/rake/task'
require 'spec/rake/spectask'

namespace :test do
  Rake::TestTask.new(:basic => %w(test:generator:rails_setup test:generator:universal_flash_messages_setup)) do |task|
    task.libs << "lib"
    task.libs << "test"
    task.pattern = "test/**/*_test.rb"
    #task.verbose = false
  end

  Cucumber::Rake::Task.new(:features) do |t|
    t.cucumber_opts = "--format progress"
    t.profile = 'features'
  end

  namespace :generator do

    task :rails_setup do
      system "cd test && rails new rails_root --skip"
    end

    task :universal_flash_messages_setup do
      system "cd test/rails_root && bundle install && ./script/rails generate universal_flash_message:install db:migrate db:test:prepare"
    end

  end

end
