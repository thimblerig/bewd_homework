class PokehomeController < ApplicationController
  def pokeindex
    pokemon_list = HTTParty.get('http://pokeapi.co/api/v1/pokedex/1/')
    pokemon_response = pokemon_list.parsed_response
    @pokemon_object = pokemon_response["pokemon"]
  end
  def pokemon
   pokeparams = params[:format]
   pokeurl = HTTParty.get('http://pokeapi.co/' + pokeparams)
   poke_response = pokeurl.parsed_response
   @poke_name = poke_response["name"]
   @poke_abilities = poke_response["abilities"]
   @poke_types = poke_response["types"]

   #This gets the pokemon image
   if poke_response["sprites"][0] == nil
   else
   poke_sprite = poke_response["sprites"][0]["resource_uri"]
   poke_sprite_url = HTTParty.get('http://pokeapi.co/' + poke_sprite)
   poke_image_response = poke_sprite_url.parsed_response
   poke_image_uri = poke_image_response["image"]
   @poke_image = ('http://pokeapi.co/' + poke_image_uri)
 end

   #This goes to the next evolution
   @next_evolutions = poke_response["evolutions"][0]
   if @next_evolutions == nil
   else
   @next_evolutions_name = @next_evolutions["to"]
   @next_evolutions_uri = @next_evolutions["resource_uri"]   
 end



  end
end
