class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:id] = @user.id
    else
      @user.errors << "Invalid email or password"
      render :json { errors: @user.errors }
    end
  end
  
end
