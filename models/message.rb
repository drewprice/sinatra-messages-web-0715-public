class Message < ActiveRecord::Base
  def self.new_from_interface
    Message.new.tap do |message|
      message.to = Interface.prompt('Who do you want to message?')
      message.from = Interface.prompt('Who are you?')
      message.content = Interface.prompt('Your message:')
    end
  end
end
