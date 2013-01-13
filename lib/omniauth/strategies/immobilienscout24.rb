require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Immobilienscout24 < OmniAuth::Strategies::OAuth

      args [:consumer_key, :consumer_secret]

      option :client_options, {
        :access_token_path  => '/restapi/security/oauth/access_token',
        :authorize_path     => '/restapi/security/oauth/confirm_access',
        :request_token_path => '/restapi/security/oauth/request_token',
        :site               => 'http://rest.immobilienscout24.de',
      }

      info do
        {
          :peid         => raw_info['pid'],
          :email        => raw_info['id'],
          :id           => raw_info['contactDetails']['id'],
          :salutation   => raw_info['contactDetails']['salutation'],
          :address      => raw_info['contactDetails']['address']
        }
      end

      uid { access_token.params[:user_id] }

      extra do
        { 'raw_info' => raw_info }
      end

      def raw_info
        #WTF
        @raw_info ||= MultiJson.decode(Hash.from_xml(access_token.get("/restapi/api/search/v1.0/searcher/me").body).to_json)['searcher']
      end

    end
  end
end
