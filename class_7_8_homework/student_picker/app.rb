require 'sinatra'

get '/' do
  erb :index
end

get '/student' do
  @pool = ["Larry", "Kimmy", "Sammy", "Chelsea"]
  @choice = @pool[rand(4)]
  erb :student
end
