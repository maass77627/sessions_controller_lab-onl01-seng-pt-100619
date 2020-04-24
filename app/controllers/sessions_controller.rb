class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:username].nil?
      redirect_to '/login'
      elsif params[:username].save
        session[:username] = params[:username]
        redirect_to '/'
      else params[:username].empty?
            redirect_to '/login'
      end
    end
  end

def destroy
  session.delete :name
   redirect_to login_path
 end
end
