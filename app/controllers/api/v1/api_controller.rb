module Api
    module V1
      class ApiController < ActionController::API
        # Make ActiveStorage aware of the current host (used in url helpers)
        #include ActiveStorage::SetCurrent

        include DeviseTokenAuth::Concerns::SetUserByToken

        # before_action :configure_permitted_parameters, if: :devise_controller?

        respond_to :json

        # protected

        # if we need to add the support for multple attributes beside provided by devise aka password ,password_confirmation and email address

        # def configure_permitted_parameters
        #   devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
        # end
      end
    end
  end
