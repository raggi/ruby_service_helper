require 'win32/daemon' unless defined?(Win32) && defined?(Win32::Daemon) || 
  RUBY_PLATFORM !~ /mingw|mswin/
module Win32; class Daemon; end; end

class RubyServiceHelper < Win32::Daemon

  Version = VERSION = '0.1.0'

  def self.version; Version; end

  class << self; attr_accessor :service, :shutdown; end
  # By default does nothing, will exit immediately
  self.service  = lambda {}
  # By default does nothing.
  self.shutdown = lambda {}

  def self.start
    self.mainloop
  end

  def service_main #:nodoc:
    self.class.service.call
  end

  def service_stop #:nodoc:
    self.class.shutdown.call
  end
end