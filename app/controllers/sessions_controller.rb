class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      redirect_to :root
    else
      @error = "Incorrect email or password"

      render :new
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to login_path
  end
end
