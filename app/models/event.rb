class Event
  attr_accessor :events,:name, :description, :url, :time, :address1, :address2, :city, :region

  def initialize
    url = "https://www.eventbriteapi.com//v3/events/search/?q=technology&location.latitude=38.9072&location.longitude=-77.0369&token=XOPE6JNWCBHK7PUPYY5W"

    response = HTTParty.get(url)
    puts response

    venueID = response["events"][0]["venue_id"]
    venueURL = "https://www.eventbriteapi.com/v3/venues/#{venueID}/?token=XOPE6JNWCBHK7PUPYY5W"

    venue = HTTParty.get(venueURL)


    @events = response["events"]
    puts @events.inspect
    # @name = response["events"]["name"]["text"]
    # @description = response["events"][0]["description"]["text"]
    # @url = response["events"][0]["url"]
    # @time = response["events"][0]["start"]["local"]
    # @address1 = venue["address"]["address_1"]
    # @address2 = venue["address"]["address_2"]
    # @city = venue["address"]["city"]
    # @region = venue["address"]["region"]
  end
end

# {
#     "pagination": {
#         "object_count": 204,
#         "page_number": 1,
#         "page_size": 50,
#         "page_count": 5,
#         "continuation": "eyJwYWdlIjogMn0"
#     },
#     "events": [
#         {
#             "name": {
#                 "text": "Blockchain Technology & Structured Finance",
#                 "html": "Blockchain Technology &amp; Structured Finance"
#             },
#             "description": {
#                 "text": "Distributed ledger technology and smart contracts may present opportunities for the securitization industry (for the better)\u2014through lower costs/greater efficiencies, a more competitive marketplace, lower operational/fraud risks, and wider market acceptance of securitized offerings. The Structured Finance Industry Group (SFIG), the Chamber of Digital Commerce and Deloitte invite you to a discussion to explore the possibilities of blockchain technology in the securitization industry.\nDoors open at 5:30pm, presentations start at 6:00pm, followed by cocktails\nPanelists:\n- Kevin Batteh, Partner, Delta Strategy Group; Chief Policy Advisor, Chamber of Digital Commerce\n- Carol Van Cleef, Partner,\u00a0BakerHostetler\u00a0\n- Val Srinivas, Research Leader, Banking & Capital Markets, Center for Financial Services, Deloitte (moderator) \n- Chuck Thompson, Blockchain Consulting LLC\n- Andrea Tinianow, Director of Corporate and International Development, State of Delaware\n-\u00a0Emmanuel Aidoo,\u00a0Blockchain & Cryptocurrency Strategy,\u00a0Credit Suisse",
#                 "html": "<P><STRONG>Distributed ledger technology and smart contracts may present opportunities for the securitization industry (for the better)\u2014through lower costs/greater efficiencies, a more competitive marketplace, lower operational/fraud risks, and wider market acceptance of securitized offerings. The Structured Finance Industry Group (SFIG), the Chamber of Digital Commerce and Deloitte invite you to a discussion to explore the possibilities of blockchain technology in the securitization industry.<\/STRONG><\/P>\n<P><STRONG>Doors open at 5:30pm, presentations start at 6:00pm, followed by cocktails<\/STRONG><\/P>\n<P><STRONG>Panelists:<\/STRONG><\/P>\n<P><BR><STRONG>- Kevin Batteh, Partner, Delta Strategy Group; Chief Policy Advisor, Chamber of Digital Commerce<\/STRONG><\/P>\n<P><STRONG>- Carol Van Cleef, Partner,\u00a0BakerHostetler\u00a0<\/STRONG><\/P>\n<P><STRONG>- Val Srinivas, Research Leader, Banking &amp; Capital Markets, Center for Financial Services, Deloitte (moderator) <\/STRONG><\/P>\n<P><STRONG>- Chuck Thompson, Blockchain Consulting LLC<\/STRONG><\/P>\n<P><STRONG>- Andrea Tinianow, Director of Corporate and International Development, State of Delaware<\/STRONG><BR><\/P>\n<P><STRONG>-\u00a0Emmanuel Aidoo,\u00a0Blockchain &amp; Cryptocurrency Strategy,\u00a0<SPAN>Credit Suisse<\/SPAN><\/STRONG><\/P>"
#             },
#             "id": "28727682271",
#             "url": "https://www.eventbrite.com/e/blockchain-technology-structured-finance-tickets-28727682271?aff=ebapi",
#             "start": {
#                 "timezone": "America/New_York",
#                 "local": "2016-11-30T17:30:00",
#                 "utc": "2016-11-30T22:30:00Z"
#             },
#             "end": {
#                 "timezone": "America/New_York",
#                 "local": "2016-11-30T20:30:00",
#                 "utc": "2016-12-01T01:30:00Z"
#             },
#             "created": "2016-10-19T14:11:01Z",
#             "changed": "2016-11-10T17:36:34Z",
#             "capacity": 300,
#             "capacity_is_custom": true,
#             "status": "live",
#             "currency": "USD",
#             "listed": true,
#             "shareable": true,
#             "online_event": false,
#             "tx_time_limit": 480,
#             "hide_start_date": false,
#             "hide_end_date": false,
#             "locale": "en_US",
#             "is_locked": false,
#             "privacy_setting": "unlocked",
#             "is_series": false,
#             "is_series_parent": false,
#             "is_reserved_seating": false,
#             "source": "create_2.0",
#             "logo_id": "25188912",
#             "organizer_id": "11956473520",
#             "venue_id": "17084442",
#             "category_id": "101",
#             "subcategory_id": "1999",
#             "format_id": "2",
#             "resource_uri": "https://www.eventbriteapi.com/v3/events/28727682271/",
#             "logo": {
#                 "crop_mask": {
#                     "top_left": {
#                         "x": 0,
#                         "y": 0
#                     },
#                     "width": 2160,
#                     "height": 1080
#                 },
#                 "original": {
#                     "url": "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F25188912%2F162736670024%2F1%2Foriginal.jpg?s=72e16cff440577a09dd81504252a83b5",
#                     "width": 2160,
#                     "height": 1080
#                 },
#                 "id": "25188912",
#                 "url": "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F25188912%2F162736670024%2F1%2Foriginal.jpg?h=200&w=450&rect=0%2C0%2C2160%2C1080&s=e79938aa75702db8645c9551511411b7",
#                 "aspect_ratio": "2",
#                 "edge_color": "#ffffff",
#                 "edge_color_set": true
#             }
#         },
