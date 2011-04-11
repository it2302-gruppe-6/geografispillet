Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '191830237526889', '6e3d8bb629d7c2bed79028ea109cf1a2'
end
