load 'tasks/setup.rb'

ensure_in_path 'lib'
require 'ruby_service_helper'

task :default => :test

PROJ.name = 'ruby_service_helper'
PROJ.authors = 'James Tucker'
PROJ.email = 'raggi@rubyforge.org'
PROJ.url = 'http://github.com/raggi/ruby_service_helper'
PROJ.rubyforge.name = 'libraggi'
PROJ.version = RubyServiceHelper.version
PROJ.gem.dependencies << 'win32-service'
