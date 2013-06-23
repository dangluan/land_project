
# Be sure to restart your server when you modify this file.

LandProject::Application.config.session_store :cookie_store, key: '_land_project_session'
require File.join(Rails.root,'lib','openshift_secret_generator.rb')

# Be sure to restart your server when you modify this file.



# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# LandProject::Application.config.session_store :active_record_store

