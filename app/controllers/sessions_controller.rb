class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      flash[:success] = 'Signed in'
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid name'
      render 'users/new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end

end
