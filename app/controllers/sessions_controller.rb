class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "El usuario o contraseña son incorrectos"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
