require 'sinatra'
require 'httparty'

get '/' do
  erb :home
end

post '/pantscast' do
  zip = params['zipcode']
  hippo = HTTParty.get("http://api.zippopotam.us/us/#{zip}").parsed_response
  lat = hippo['places'][0]['latitude']
  lng = hippo['places'][0]['longitude']

  forecast = HTTParty.get("https://api.forecast.io/forecast/b6ec16c6daf2eaa642175d3a5d80d219/#{lat},#{lng}").parsed_response
  @currently = forecast['currently']['temperature']
  @hourly = forecast['hourly']['data'][0]['temperature']
  @cloudy = forecast['hourly']['data'][0]['cloudCover']
  @high = forecast['daily']['data'][0]['temperatureMax']


  if @cloudy >= 0.5
    @cloudy_message = "cloudy"
  else
    @cloudy_message = "not be cloudy"
  end

  if @high >= 74
    @pants_message = 'Shorts Day!'
  else
    @pants_message = 'Pants Day!'
  end




  erb :pantscast
end
