class SessionsController < ApplicationController
  def new
    @user = User.new 
  end

  def create
    if params[:name].nil?
    redirect_to 'new'
  else
    session[:name] = params[:name]
    redirect_to '/'
  end
end

 def destroy
   if session[:name]
    session[:name].delete
   end
 end
end

