class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)

    # Only people from a white list can sign in through OmniAuth
    # Example: ENV['EX_LIBRIS_GUESTS'] = "john@example.com,alice@secure.com"
    if ENV['EX_LIBRIS_GUESTS'].include? auth["info"]["email"]
      create! do |user|
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
        user.email = auth["info"]["email"]
      end
    end
  end
end
