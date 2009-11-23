HOST = 'localhost:3000'
DO_NOT_REPLY = 'donotreply@decorationsapp.com'
RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.gem "clearance",
    :lib     => 'clearance',
    :source  => 'http://gemcutter.org',
    :version => '0.8.3'
   
  config.time_zone = 'UTC'

end

require 'clearance_hacks'
