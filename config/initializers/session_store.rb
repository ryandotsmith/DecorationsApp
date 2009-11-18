# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_DecorationsApp_session',
  :secret      => '9bf91b8a370c3ebba0a26f6a4cf449faa39465a256bd6faf0512c2d84c6d29845d73291523c3a4c4da1e21084499545b7aea6d88d5b07f6ca4527c1988e9dd65'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
