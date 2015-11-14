class PagesController < ApplicationController
  before_filter :get_pokemon
def get_pokemon
      random_number = nil
      while random_number == nil
      random_number = 1 + rand(777)
      end
      random_number_string = random_number.to_s
      pokemon_list = HTTParty.get('http://pokeapi.co/api/v1/sprite/' + random_number_string)
      @poke_response = pokemon_list.parsed_response
      poke_image_uri = @poke_response["image"]
      @poke_image = ('http://pokeapi.co/' + poke_image_uri)
      @pokemon_name = @poke_response['pokemon']['name']

end

  def index

  end

  def correct
    @user_input = params[:text]
    if @user_input.blank?
      redirect_to "/"
    elsif @pokemon_name != @user_input.downcase
      redirect_to "/incorrect"
    end
  end

  def incorrect
  end
end
