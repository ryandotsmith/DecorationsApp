# The test environment is used exclusively to run your application's
# test suite.  You never need to work with it otherwise.  Remember that
# your test database is "scratch space" for the test suite and is wiped
# and recreated between test runs.  Don't rely on the data there!
config.cache_classes = true

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false
config.action_view.cache_template_loading            = true

# Disable request forgery protection in test environment
config.action_controller.allow_forgery_protection    = false

config.action_mailer.delivery_method = :test


require 'g'

config.gem "rspec", 
  :lib => false, 
  :version => ">= 1.2.0"
config.gem "rspec-rails", 
  :lib => false, 
  :version => ">= 1.2.0"
config.gem "thoughtbot-factory_girl",
  :lib    => "factory_girl",
  :version => "1.2.2",
  :source => "http://gems.github.com"
config.gem "cucumber",
  :version => ">= 0.4.4"

