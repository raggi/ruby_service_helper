# Disable test/unit and rspec from running, in case loaded by broken tools.
Test::Unit.run = false if defined?(Test) && defined?(Test::Unit)
Spec::run = false if defined?(Spec) && Spec::respond_to?(:run=)

# Setup a nice testing environment
$DEBUG, $TESTING = true, true
$:.push File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
$:.uniq!

%w[rubygems bacon].each { |r| require r }

# Bacon doesn't do any automagic, so lets tell it to!
Bacon.summary_on_exit

module Win32
  class Daemon
    def self.mainloop
      @@object = self.new
      @@object.service_main
    end
    def self.stop
      @@object.service_stop
    end
  end
end

describe "Win32::Daemon mock" do
  should "create and run service_main on #mainloop" do
    Class.new(Win32::Daemon) do
      attr_accessor :a
      def service_main
        @a = 1
        self
      end
    end.mainloop.a.should.eql 1
  end
  should "call service_stop on #stop" do
    Class.new(Win32::Daemon) do
      attr_accessor :b
      def service_main; end
      def service_stop
        @b = 1
        self
      end
    end.mainloop
    Win32::Daemon.stop.b.should.eql 1
  end
end

require File.expand_path(
  File.join(File.dirname(__FILE__), %w[.. lib ruby_service_helper]))
