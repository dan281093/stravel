class Events::AttendeesController < ApplicationController
  def index
    event = Event.find(params[:id])
    @users =  event.users
  end

  def show
  end
end
