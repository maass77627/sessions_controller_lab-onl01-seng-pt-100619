class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil?
    redirect_to '/login'
  elsif params[:name].empty?
    redirect_to '/login'
  else
    session[:name] = params[:name]
    redirect_to '/sessions/new'
  end
end
end

 def destroy
   if session[:name]
    session[:name].delete
   end
 end
end
