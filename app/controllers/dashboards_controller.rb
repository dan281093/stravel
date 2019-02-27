class DashboardsController < ApplicationController
  def index
    @events = current_user.events.map do |event|
      event.date >= Date.today
    end
    # @past_events = current_user.events.where(date > Date.today)
    @hosting_events = Event.where(host: current_user).map do |event|
      event.date >= Date.today
    end
  end
end
