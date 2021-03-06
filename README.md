# SiliconPrairieEvent
Event Scraper collecting information from several calendars in the Silicon Prairie.

[![Gem Version](https://badge.fury.io/rb/silicon_prairie_events.svg)](http://badge.fury.io/rb/silicon_prairie_events)

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

Each event will be formatted as a standard ruby object.
```ruby
=> #<SiliconPrairieEvent::Event:0x007fd889c9dce0
   @bearing=nil,
   @distance=nil,
   @event_address=" 1201 INFINITY CT",
   @event_author="Firespring",
   @event_date="2014-10-17T06:00:00-05:00",
   @event_description="",
   @event_end="2014-10-19T08:30:00-05:00",
   @event_name="Hack Lincoln",
   @event_origin="Silicon_Prairie_News",
   @event_state="NE",
   @event_url="http://siliconprairienews.com/events/hack-lincoln/",
   @event_zip_code="68512",
   @id=106,
   @latitude=40.7316771,
   @longitude=-96.7036615>
```
   These objects can be accessed as so.
```ruby
   first_event = SiliconPrarieEvent::Event.all_events[0]
   first_event.event_address
   => " 1201 INFINITY CT"
```

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
```
In this instance month should be a string in the format of '01', '02', '11'.
```ruby
SiliconPrairieEvent::Event.events_by_month('01')
=> 'Array of months for January'
SiliconPrairieEvent::Event.events_by_month('12')
=> 'Array of months for December'
```
Returns an Array of events from all calendars by the given month.
```ruby
SiliconPrairieEvent::Event.events_near(range)
```
In this instance range should be an integer number.
```ruby
SiliconPrairieEvent::Event.events_near(5)
=> 'Array of events within 5 miles'
```
Returns an Array of events from all calendars for the given range of miles.

## Contributing

1. Fork it ( https://github.com/omahacodeschool/silicon_prairie_event/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
