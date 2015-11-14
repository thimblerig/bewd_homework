class HomeController < ApplicationController
  def index
    @zen = HTTParty.get('https://api.github.com/zen')
    @zen_pic = 'http://lorempixel.com/500/500/nature/'
    @colors = ['blue','green','red']

    @random_color = @colors.sample
  end
end
