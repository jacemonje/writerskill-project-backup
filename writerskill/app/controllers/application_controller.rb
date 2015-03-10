class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
        #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:idnumber, :firstname:, :email, :password) }

        devise_parameter_sanitizer.for(:sign_up) << :idnumber
        devise_parameter_sanitizer.for(:sign_up) << :firstname
        devise_parameter_sanitizer.for(:sign_up) << :middleinitial
        devise_parameter_sanitizer.for(:sign_up) << :lastname
        devise_parameter_sanitizer.for(:sign_up) << :nickname
        devise_parameter_sanitizer.for(:sign_up) << :year
        devise_parameter_sanitizer.for(:sign_up) << :course
        devise_parameter_sanitizer.for(:sign_up) << :phone
        devise_parameter_sanitizer.for(:sign_up) << :email
        devise_parameter_sanitizer.for(:sign_up) << :address
        devise_parameter_sanitizer.for(:sign_up) << :birthday
        devise_parameter_sanitizer.for(:sign_up) << :emergency_person
        devise_parameter_sanitizer.for(:sign_up) << :emergency_phone
        devise_parameter_sanitizer.for(:sign_up) << :fb_url
        devise_parameter_sanitizer.for(:sign_up) << :member_status
        devise_parameter_sanitizer.for(:sign_up) << :member_type
        devise_parameter_sanitizer.for(:sign_up) << :points

        #devise_parameter_sanitizer.for(:account_update) {
        #  |u| u.permit(:idnumber, :firstname:, :email, :password, :current_password)
        #  }
    end



end
