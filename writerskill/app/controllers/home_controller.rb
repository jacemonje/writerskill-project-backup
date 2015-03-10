class HomeController < ApplicationController

  def index

    if member_signed_in?
      redirect_to :controller => 'dashboard', :action => 'index'
    else
      @users = Member.last(3)
      @events = Event.last(3)

      #@workshops = Event.find_by eventclass: 'Workshop'
      #or
      @workshops = Event.all


      #@workshops = Event.eventclass("Workshop").limit(3)


    end




  end

end
