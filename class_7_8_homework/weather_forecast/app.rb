#displays the current weather of Santa Monica, CA

require 'sinatra'
require 'httparty'

get '/' do
  @forecast = HTTParty.get ("https://api.forecast.io/forecast/c83f976f2aba37d1aba39801b2d7a99a/34.0219,-118.4814")
  erb :index
end
