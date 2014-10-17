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

Below are the methods you can run to get filtered collections of events.
```ruby
SiliconPrairieEvent::Event.all_events
```
Returns an Array of all events from all calendars enter:
```ruby
SiliconPrairieEvent::Event.lincoln_events
```
Returns an Array of events from the Startup Lincoln Calendar.
```ruby
SiliconPrairieEvent::Event.tech_omaha_events
```
Returns an Array of events from the Tech Omaha Calendar.
```ruby
SiliconPrairieEvent::Event.spn_events
```
Returns an Array of events form the Silicon Prairie News Calendar.
```ruby
SiliconPrairieEvent::Event.events_today
```
Returns an Array of events from all Calendars that are scheduled for the current day.
```ruby
SiliconPrairieEvent::Event.rest_of_week
```
Returns an Array of events from all calendars for current day to end of current week.
```ruby
SiliconPrairieEvent::Event.events_all_week
```
Returns an Array of events from all calendars for all of current week.
```ruby
SiliconPrairieEvent::Event.events_this_month
```
Returns an Array of events from all calendars for all of current month.
```ruby
SiliconPrairieEvent::Event.past_events
```
Returns an Array of events from the past
```ruby
SiliconPrairieEvent::Event.events_by_month(month)
SiliconPrairieEvent::Event.events_by_month('01')
=> Array of months for January
SiliconPrairieEvent::Event.events_by_month('12')
=> Array of months for December
```
Returns an Array of events from all calendars by the given month.
```ruby
SiliconPrairieEvent::Event.events_near(range)
SiliconPrairieEvent::Event.events_near(5)
=> Array of events within 5 miles
```
Returns an Array of events from all calendars for the given range of miles.

## Contributing

1. Fork it ( https://github.com/omahacodeschool/silicon_prairie_event/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
