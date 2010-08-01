class LoginController < ApplicationController
  
  def login
    @title = "Login Page"
    @submit_to = "authenticate"
  end
  
  def authenticate
    unless params[:username] == "example" && params[:password] == "example"
        flash[:error] = "Sorry, no go"
        redirect_to :action => "login"
    else
        render :acknowledge
    end
  end
  
  private
  def acknowledge
    @title = "You're in!"
  end
end