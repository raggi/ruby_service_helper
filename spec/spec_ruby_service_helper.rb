require File.dirname(__FILE__) + '/helper'

describe 'RubyServiceHelper' do
  should "#call the service when it starts" do
    x = 0
    RubyServiceHelper.service = lambda { x = 1 }
    RubyServiceHelper.start
    x.should.eql 1
  end
  should "#call the shutdown when it stops" do
    x = 0
    RubyServiceHelper.shutdown = lambda { x = 1 }
    RubyServiceHelper.start
    x.should.eql 0
    Win32::Daemon.stop
    x.should.eql 1
  end
end