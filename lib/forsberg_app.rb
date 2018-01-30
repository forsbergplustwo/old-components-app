require "forsberg_app/engine"
require "autoprefixer-rails"
require "bootstrap-sass"
require "rack-affiliates"
require "httparty"

module ForsbergApp

  class Engine < ::Rails::Engine
    isolate_namespace ForsbergApp
  end

  class Configuration
    attr_accessor :referral_base_url, :referral_app_handle, :referral_username,
      :referral_password
  end

  class << self
    attr_reader :config

    def configure
      @config = Configuration.new
      yield config
    end

  end

  module ReferralModule
    class << self

      def check_and_register(shop, request)
        #Record referral if exists in cookie
        if !request.env['affiliate.tag'].blank?
          Rails.logger.info('***** Affiliate tags found')
          shop[:referral_tag] = request.env['affiliate.tag']
          shop[:referral_at] = Time.at(request.env['affiliate.time'])
          shop[:referral_from] = request.env['affiliate.from']
          register(shop)
        else
          Rails.logger.info('***** No affiliate tag found')
        end
        shop
      end

      def register(shop)
        auth = {:username => ForsbergApp.config.referral_username, :password => ForsbergApp.config.referral_password}
        response = HTTParty.post(ForsbergApp.config.referral_base_url,
          {
            :body => {
             :referral => {
                "app_handle" => ForsbergApp.config.referral_app_handle.to_s,
                "referral_handle" => shop[:referral_tag],
                "referred_at" => shop[:referral_at],
                "referred_from" => shop[:referral_from],
                "myshopify_domain" => "test-#{Time.now.to_i}"#(shop[:url].blank? ? shop[:url] : shop[:myshopify_domain])
              }
            }.to_json,
            :basic_auth => auth,
            :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'}
          })
        return (response.code == 201)
      end

    end # Class self

  end # ReferralModule

end # ForsbergApp
