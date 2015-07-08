$:.unshift("/Library/RubyMotion/lib")
case ENV.fetch('platform', 'ios') # allow setting from the command line, default to iOS
when 'ios' then require 'motion/project/template/ios'
when 'osx' then require 'motion/project/template/osx'
when 'android' then require 'motion/project/template/android'
else raise "Unsupported platform #{ENV['platform']}"
end

require 'bundler'
Bundler.require
require "bundler/gem_tasks"

Motion::Project::App.setup do |app|
  app.name = 'moticons'
end
