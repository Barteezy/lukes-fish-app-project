class SessionsController < ApplicationController


  def destroy
    session.clear
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(current_user)
    else
      @user = User.new(email: params[:user][:email])
      @user.errors[:base] << "Email / password is invalid"
      render :new
    end
  end


end