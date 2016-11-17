class MeetupController < ApplicationController
  def get_events
    @event = Event.new
    puts @event.inspect
  end
end
