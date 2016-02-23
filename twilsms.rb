require 'twilio-ruby'

accountSID = 
authtoken = 

@client = Twilio::REST::Client.new accountSID, authToken

from = '+12677336304'

friends = { '' => "Anthony Cassel"}

friends.each do |key, value|
	message = @client.account.message.create(
											:from => from,
											:to => key,
											:body => "Nice shirt... NERD"
	)
puts "Sent message to #{value}"
end
