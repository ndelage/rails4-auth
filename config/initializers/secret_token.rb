# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Auth::Application.config.secret_key_base = '0a16c39f666f3411ef705e77d5f32c6944f823775e909854c6e67220dabb23a438b7e9b9ee542c902c06986994ee60c4bff1dbc0d1f40a1ca12eea6e0172124e'
