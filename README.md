# Omniauth::Songwriter

An OmniAuth strategy for connecting to the Songwriter.io ID service.

Add this to `config/initializers/devise.rb`

    Devise.setup do |config|
      ...
      config.omniauth :songwriter, APP_ID, APP_SECRET
    end

To change the endpoint of the provider, make use of the `setup` option
available to `Rack::Builder`.

    Devise.setup do |config|
      config.omniauth :songwriter, APP_ID, APP_SECRET,
        setup: lambda { |env|
          env['omniauth.strategy'].options[:client_options].site = "https://id.provider.com"
        }
    end

