require 'twilio-ruby'

accountSID = 'AC86d81fd14193dd3847570f52e822db2b'
authtoken = '09ca34fc1d9b120c9953326feffc237f'

@client = Twilio::REST::Client.new accountSID, authToken

from = '+12677336304'

friends = { '+12673745180' => "Anthony Cassel"}

friends.each do |key, value|
	message = @client.account.message.create(
											:from => from,
											:to => key,
											:body => "Nice shirt... NERD"
	)
puts "Sent message to #{value}"
end