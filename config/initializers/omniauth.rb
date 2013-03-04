require 'omniauth-openid'
require 'openid/store/filesystem'

# See http://railscasts.com/episodes/241-simple-omniauth-revised
# See https://github.com/intridea/omniauth-openid

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :openid, :store => OpenID::Store::Filesystem.new('/tmp')
end
