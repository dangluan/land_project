require File.join(Rails.root,'lib','openshift_secret_generator.rb')

# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
LandProject::Application.config.secret_token = 'f61524ce7a38f39bc8b4507b351c2a5649856726ad58eee125c169a4473279460fde0c6f10192239183c25863b152c525a859a9967a7a6130c6396ea802a47e7'

