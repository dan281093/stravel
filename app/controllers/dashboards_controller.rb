class DashboardsController < ApplicationController
  def index
    @events = Event.all
    @hosted_events = current_user.hosted_events
    @upcoming_events = current_user.upcoming_events
  end
end
