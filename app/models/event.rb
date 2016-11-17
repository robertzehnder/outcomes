class Event
  attr_accessor :events, :venues, :name, :description, :url, :time, :address1, :address2, :city, :region

  def initialize
    url = "https://www.eventbriteapi.com//v3/events/search/?q=technology&location.latitude=38.9072&location.longitude=-77.0369&token=XOPE6JNWCBHK7PUPYY5W"

    response = HTTParty.get(url)
    venue = []

    # response["events"].each do
    #
    #   venueID = response["events"][x]["venue_id"]
    #   venueURL = "https://www.eventbriteapi.com/v3/venues/#{venueID}/?token=XOPE6JNWCBHK7PUPYY5W"
    #   z = HTTParty.get(venueURL)
    #   venue.push(z["address"]["localized_multi_line_address_display"])
    # end

    venueID = response["events"][0]["venue_id"]
    venueURL = "https://www.eventbriteapi.com/v3/venues/#{venueID}/?token=XOPE6JNWCBHK7PUPYY5W"
    z = HTTParty.get(venueURL)
    # puts z["address"]["localized_multi_line_address_display"]
    @venues = z["address"]["localized_multi_line_address_display"]
    @events = response["events"]
  end
end
