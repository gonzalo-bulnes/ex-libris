class SessionsController < ApplicationController

  # POST 'create'
  def create
   user = User.from_omniauth(env['omniauth.auth'])
   session[:user_id] = user.id
   redirect_to root_url, notice: "Signed in."
  end

  # GET 'destroy'
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out."
  end

end
