class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      reset_session
      log_in @user
      flash[:success] = "Bienvenido al Inventario"
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  def show
    begin
      @user = User.find(params[:id])
    rescue
      nil
    end
  end

  private 
    def user_params
      params.require(:user).permit(:name,:username,:password,:password_confirmation)
    end
end
