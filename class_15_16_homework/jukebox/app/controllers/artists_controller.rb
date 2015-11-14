class ArtistsController < ApplicationController
  def home
    @songs = Song.all
  end
end
