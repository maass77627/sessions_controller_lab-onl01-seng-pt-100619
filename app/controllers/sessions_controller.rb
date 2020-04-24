class SessionsController < ApplicationController
  def new
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

def new
   @user = User.new
 end
 def create
   user = User.find_by(name: params[:name])
   if user.save
     user.id = session[:user_id]
   else
     flash[:notice] = "Form is invalid"
     flash[:color]= "invalid"
   end
   render "new"
 end
end
