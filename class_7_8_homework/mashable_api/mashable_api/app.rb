require 'sinatra'
require 'httparty'

get '/' do
  @responses = HTTParty.get "http://mashable.com/stories.json"

erb :index
end
