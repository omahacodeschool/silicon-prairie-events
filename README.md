# SiliconPrairieEvent
Event Scraper collecting information from several calendars in the Silicon Prairie.

[![Gem Version](https://badge.fury.io/rb/silicon_prairie_event.svg)](http://badge.fury.io/rb/silicon_prairie_event)

The gem utilizes an api which is located at:
https://event-api.herokuapp.com/api/v1/all_events

Source code for api:
https://github.com/omahacodeschool/spn-events-api

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'silicon_prairie_event'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install silicon_prairie_event

## Usage

This gem is very similar to many other data scraping gems.

To retrieve the collection of all events enter:
```ruby
SiliconPrairieEvent::Event.all_events
```
Similiarly calling any of the methods listed below, will return results according to the name of the method.
```ruby
SiliconPrairieEvent::Event.lincoln_events
SiliconPrairieEvent::Event.tech_omaha_events
SiliconPrairieEvent::Event.spn_events
SiliconPrairieEvent::Event.events_today
SiliconPrairieEvent::Event.rest_of_week
SiliconPrairieEvent::Event.events_all_week
SiliconPrairieEvent::Event.events_this_month
SiliconPrairieEvent::Event.past_events
SiliconPrairieEvent::Event.events_by_month(month) - month is a String '01', '02', '11, '12'.
SiliconPrairieEvent::Event.events_near(range) - range is an Integer num, 5 for five miles.
```
## Contributing

1. Fork it ( https://github.com/omahacodeschool/silicon_prairie_event/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
