class ParrotController < ApplicationController

  
  def index
    @message = params[:text]
  end

  def about
  end
end
