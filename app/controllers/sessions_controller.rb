class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:username].nil?
      redirect_to '/login'
    else
      session[:username] = params[:username]
        redirect_to '/'
      session[:name] = name_from_params
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

def destroy
  session.delete :name
   redirect_to login_path
 end
end
