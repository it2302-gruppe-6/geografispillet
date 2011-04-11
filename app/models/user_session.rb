class UserSession < Authlogic::Session::Base
    include ActiveModel::Conversion
    def persisted?
        false
    end
    single_access_allowed_request_types = :all
end
