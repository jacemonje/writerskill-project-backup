class RegistrationController < ApplicationController

def sign_up_params
  params.require(:member).permit(:idnumber, :firstname, :middleinitial, :lastname, :nickname, :year, :course, :phone :email, :address, :birthday, :emergency_person, :emergency_phone, :fb_url, :member_status, :member_type, :points: :password, :password_confirmation)
end

def account_update_params

  params.require(:member).permit(:idnumber, :firstname, :middleinitial, :lastname, :nickname, :year, :course, :phone :email, :address, :birthday, :emergency_person, :emergency_phone, :fb_url, :member_status, :member_type, :points: :password, :password_confirmation, :current_password)

  #params.require(:member).permit(:idnumber, :firstname, :email, :password, :password_confirmation, :current_password)
end



end
