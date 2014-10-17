require_relative "silicon_prairie_event/version"
require "HTTParty"

module SiliconPrairieEvent
  class Event
    attr_reader :id, :bearing, :distance, :event_address, :event_author, :event_date, :event_description, :event_end, :event_name, :event_origin, :event_state, :event_url, :event_zip_code, :event_latitude, :event_longitude
    def initialize(hash)
      @id                = hash['event']['id']
      @bearing           = hash['event']['bearing']
      @distance          = hash['event']['distance']
      @event_address     = hash['event']['event_address']
      @event_author      = hash['event']['event_author']
      @event_date        = hash['event']['event_date']
      @event_description = hash['event']['event_description']
      @event_end         = hash['event']['event_end']
      @event_name        = hash['event']['event_name']
      @event_origin      = hash['event']['event_origin']
      @event_state       = hash['event']['event_state']
      @event_url         = hash['event']['event_url']
      @event_zip_code    = hash['event']['event_zip_code']
      @latitude          = hash['event']['latitude']
      @longitude         = hash['event']['longitude']
    end
    
    def self.all_events
      all_events = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/all_events")
      
      response.each do |hash|
        all_events << Event.new(hash)
      end
      all_events
    end
    
    def self.lincoln_events
      lincoln_events = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/startup_lincoln_events")
      
      response.each do |hash|
        lincoln_events << Event.new(hash)
      end
      lincoln_events
    end
    
    def self.events_all_week
      week_events = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/events_all_week")
      
      response.each do |hash|
        week_events << Event.new(hash)
      end
      week_events
    end
    
    def self.events_by_month(month)
      this_month = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/events_by_month/#{month}")
      
      response.each do |hash|
        this_month << Event.new(hash)
      end
      this_month
    end
    
    def self.events_near(range)
      near_events = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/events_near/#{range}")
      
      response.each do |hash|
        near_events << Event.new(hash)
      end
      near_events
    end
    
    def self.rest_of_week
      rest_of_week = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/events_rest_of_week")
      
      response.each do |hash|
        rest_of_week << Event.new(hash)
      end
      rest_of_week
    end
    
    def self.spn_events
      spn_events = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/spn_events")
      
      response.each do |hash|
        spn_events << Event.new(hash)
      end
      spn_events
    end
    
    def self.tech_omaha_events
      tech_omaha_events = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/tech_omaha_events")
      
      response.each do |hash|
        tech_omaha_events << Event.new(hash)
      end
      tech_omaha_events
    end
    
    def self.events_today
      todays_events = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/events_today")
      
      response.each do |hash|
        todays_events << Event.new(hash)
      end
      todays_events
    end
    
    def self.events_this_month
      events_this_month = []
      response = HTTParty.get("http://event-api.herokuapp.com/api/v1/events_this_month/")
      
      response.each do |hash|
        events_this_month << Event.new(hash)
      end
      events_this_month
    end
  end
end
