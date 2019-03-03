class DashboardsController < ApplicationController
  def index
    @hosted_events = current_user.hosted_events.where.not(active: false)
    @upcoming_events = current_user.upcoming_events.where.not(active: false)
  end
end
