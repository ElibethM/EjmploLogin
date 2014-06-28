class SessionsController < ApplicationController
  	def new
  	end

  	def create
	  user = login(params[:username], params[:password], params[:remember_me])
	  if user
	    redirect_back_or_to root_url, :notice => "Ha iniciado su sesion!"
	  else
	    flash.now.alert = "username o la contraseña no son validos"
	    render :new
	  end
	end
	 
	def destroy
	  logout
	  redirect_to root_url, :notice => "Sesion terminada"
	end
end
