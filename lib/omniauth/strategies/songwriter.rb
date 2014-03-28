require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Songwriter < OmniAuth::Strategies::OAuth2
      option :name, 'songwriter'
      option :client_options, { site: 'https://id.songwriter.io' }

      uid { raw_info['uid'].to_s }

      info do
        raw_info
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end

