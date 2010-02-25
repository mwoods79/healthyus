# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_healthyus_session',
  :secret      => '3ba87f961668ee040c8e4c524c8e3d3e2e1a7592ebf1a212c4eda5641f202b95d23a28832e8c8345f7d91d28d177a1ac94d4040344c33adeb7e21847198391e2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
