class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:username].nil?
      redirect_to '/login'
    if params[:username].empty?
        redirect_to '/login'
      elsif params[:username]
        session[:username] = params[:username]
        redirect_to '/'
      end 
    end 
  end

def destroy
  session.delete :name
   redirect_to login_path
 end
end
