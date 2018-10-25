$:.unshift("/Library/RubyMotion/lib")
$:.unshift("~/.rubymotion/rubymotion-templates")

# case ENV.fetch('platform', 'ios') # allow setting from the command line, default to iOS
# when 'ios' then require 'motion/project/template/ios'
# when 'osx' then require 'motion/project/template/osx'
# when 'android' then require 'motion/project/template/android'
# else raise "Unsupported platform #{ENV['platform']}"
# end

require 'motion/project/template/ios'
require 'motion/project/template/gem/gem_tasks'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  app.name = 'moticons'
end
