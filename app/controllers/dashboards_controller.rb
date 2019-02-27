class DashboardsController < ApplicationController
  def index
    @events = current_user.events
    @hosting_events = Event.where(host: current_user)
  end
end
