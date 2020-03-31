class SessionsController < ApplicationController
  def new
    @title = "Login"
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user #&& @user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
      # session[:user_id] = @user.id
      # redirect_to '/welcome'
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      redirect_to '/login'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  # def login
  #   @title = "Login"
  # end
  #
  # def welcome
  #   @title = "Dyna Home"
  #   @saved_locations = current_user.locations if current_user.present?
  # end
  #
  # def logout
  #   session[:user_id] = nil
  #   redirect_to '/welcome'
  # end

end
