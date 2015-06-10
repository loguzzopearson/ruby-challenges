#scrape Wiki to get 8 ball answers list

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://en.wikipedia.org/wiki/Magic_8-Ball#Possible_answers"))

# Answers to array
answers = doc.css('ol')[0].text
array = answers.lines
puts array.sample

#Receive and respond to SMS
require 'rubygems'
require 'twilio-ruby'
require 'rails'

account_sid = "ACfd1e71edeee3156e0c5bc60a2e292596"
auth_token = "0d85640de42ad662a7deqa8db4f7a5e8c"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
	:from => "+18315083942",
	:to =>"+491736916721",
	:body => "Magic Eight Ball says #{array.sample}"
)

puts message.to













