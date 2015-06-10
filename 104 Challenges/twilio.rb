require 'rubygems'
require 'twilio-ruby'

account_sid = "ACfd1e71edeee3156e0c5bc60a2e292596"
auth_token = "0d85640de42ad662a7dea8db4f7a5e8c"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
	:from => "+18315083942",
	:to =>"+491736916721",
	:body => "Say hello to your mother for me."
)

puts message.to