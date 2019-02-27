class DashboardsController < ApplicationController
  def index
    @events = []
    @past_events = []
    if current_user.events
      current_user.events.each do |event|
        if event.date >= Date.today
          @events << event
        else
          @past_events << event
        end
      end
    end
    @hosting_events = []
    @hosted_events = []
    Event.where(host: current_user).each do |event|
      if event.date >= Date.today
        @hosting_events << event
      else
        @hosted_events << event
      end
    end
  end
end
