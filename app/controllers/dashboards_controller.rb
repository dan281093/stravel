class DashboardsController < ApplicationController
  def index
    @events = Event.find_by(user: current_user)
  end
end
