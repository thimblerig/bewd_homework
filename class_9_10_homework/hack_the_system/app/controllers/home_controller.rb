class HomeController < ApplicationController
  def index
  end

  def login
  end

  def mainframe
    @user_input = params[:text]
    @secret_code = "1"
    if @user_input.blank?
      redirect_to "/"
    elsif @secret_code != @user_input
      redirect_to "/failure"
    end
  end

end
