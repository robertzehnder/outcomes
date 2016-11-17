class MeetupController < ApplicationController
  def get_events
    @event = Event.new
  end
end
