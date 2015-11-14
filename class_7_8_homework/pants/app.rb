require 'sinatra'
require 'httparty'

get '/' do
  @post_code = HTTParty.get "http://api.zippopotam.us/us/90210"
  erb :index
end
