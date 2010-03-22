# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_backend_session',
  :secret      => '45c84f3ad58beaf12b824860edf711a16374452b14e2cf97b062050a64cfb4d3f5ad6e705efbed7afd8ae1373b1ec28640bb37fcc49356de5ef7a5ca161ca304'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
