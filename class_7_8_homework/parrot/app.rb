require 'sinatra'


get '/' do

  erb :home
end


  get '/parrot' do
    @text = params[:text]
    if @text.empty?
      redirect to('/')
    end
  erb :parrot
end
