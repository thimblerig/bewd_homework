class HomeController < ApplicationController
  def index

  end
  def yodafied
    @user_input = params[:text]
    if @user_input.blank?
      redirect_to "/"
    end
    @split_input = @user_input.split(" ").join("+")
    @response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=" + @split_input,
  headers:{
    "X-Mashape-Key" => "lYOwNqsy8tmshAYs3nIQHNJho2LVp1htkBujsnLUIYUdTH7nNc",
    "Accept" => "text/plain"
  }
  end

  def about
    @partyrequest = HTTParty.get("https://yoda.p.mashape.com/yoda?sentence=" + @split_input + "lYOwNqsy8tmshAYs3nIQHNJho2LVp1htkBujsnLUIYUdTH7nNc")
    @parsed = @partyrequest.paresed_response
  end

  def contact
  end

end
