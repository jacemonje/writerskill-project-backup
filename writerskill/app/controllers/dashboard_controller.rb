class DashboardController < ApplicationController
  before_action :authenticate_member!

  def index
    @message = "Welcome to your dashboard!"
  end

end
