# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_realty_session',
  :secret      => '3dce0a8b9fbe0243d0ca723d4602c783c610bd77faca78bad33d69203c70c82165efd30cbcfd2d3905af00595ea821d8bea300eef53469a354f13b8dc33f596c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
