require 'rubygems'
require 'yahoo_weatherman'
require 'nokogiri'
require 'open-uri'

#time appropriate greeting 
def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def greeting
	current_hour = determine_current_hour
	if (current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
end
print "Good #{greeting} from your weatherman. Enter your woeid"
woeid = gets.chomp

#get location
def get_location(woeid)
	client = Weatherman::Client.new
	weather = client.lookup_by_woeid(woeid)
end

#lookup by woeid & return five day forecast
	weather = get_location(woeid)

	weather.forecasts.each do |forecast|
	
	today = Time.now.strftime('%w').to_i
	day = forecast['date']
	
	weekday = day.strftime('%w').to_i
 
		if weekday == today
			dayName = 'Today'
		elsif weekday == today + 1
			dayName = 'Tomorrow'
		else
			dayName = day.strftime('%A')
end

	puts "#{dayName} will be #{forecast['text']} with high temp of #{forecast['high']} and low of #{forecast['low']}"
end	









