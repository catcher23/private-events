class UsersController < ApplicationController
  def new
  end

  def create
    user = User.create(user_params)
    if user.save
    flash[:success] = 'User created'
    redirect_to user
  else
    flash.now[:danger] = 'Invalid user'
    render 'users/new'
  end
end

  def show
  end

end

private

def user_params
  params.require(:user).permit(:name)
end
