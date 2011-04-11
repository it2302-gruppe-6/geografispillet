Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '191830237526889', '6e3d8bb629d7c2bed79028ea109cf1a2'
end

require 'faraday'
module Faraday 
  class Adapter < Middleware
    def call(env)
      env[:ssl][:verify] = false if env[:ssl]
      process_body_for_request(env)
    end
  end
end
