class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path, notice: "User Updated"
    else
      render :new
    end
  end

  def create
    @user = User.new
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password, :location, :favorite_fish, :image)
  end

end