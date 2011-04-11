class User < ActiveRecord::Base
    acts_as_authentic

    has_many :authentications

    def apply_omniauth(omniauth)
        self.email = omniauth['user_info']['email']

        # Update user info fetching from social network
        case omniauth['provider']
        when 'facebook'
            # fetch extra user info from facebook
        end
    end
end
