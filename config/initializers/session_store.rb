# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_healthy_us_session',
  :secret      => '6901ee11219170042c6612654b9b158e43f25d45540fc8d34b53ace844cffa3439cd371c0253af4fdaeb5ae67fa686c6ad576de928cb05bedabc964b59846999'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
