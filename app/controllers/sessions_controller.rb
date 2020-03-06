class SessionsController < ApplicationController
  def new
    @title = "Login"
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def login
    @title = "Login"
  end

  def welcome
    @title = "Dyna Home"
    @saved_locations = current_user.locations if current_user.present?
  end

  def logout
    session[:user_id] = nil
    redirect_to '/welcome'
  end
end
