class MessagesApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @messages = Message.all
    @body_class = 'messages'

    erb :messages
  end

  post '/' do
    Message.create(to: params[:to], from: params[:from],
                   content: params[:content])
  end
end
