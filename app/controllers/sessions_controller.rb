class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil?
      redirect_to '/login'
    if params[:name] == ""
          redirect_to '/login'
      elsif params[:name].save
        session[:name] = params[:name]
        redirect_to '/'
      end
    end
  end

def destroy
  session.delete :name
   redirect_to login_path
 end
end
