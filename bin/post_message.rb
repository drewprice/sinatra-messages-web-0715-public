require_relative '../config/environment'

Interface.line_break

# ---
message = Message.new_from_interface

Interface.line_break

# ---
Interface.alert('Sending message...')

# ---
uri = URI('http://localhost:9292')

http = Net::HTTP.new(uri.host, uri.port)

body = "to=#{message.to}&from=#{message.from}&content=#{message.content}"

response = http.post(uri, body)

# ---
Interface.parse_response(response.message)

Interface.line_break
