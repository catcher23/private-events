class UsersController < ApplicationController
  attr_reader :user
  def new
  end

  def create
    @user = User.create(user_params)
    if user.save
      flash[:success] = 'User created'
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid user'
      render 'users/new'
    end
  end

  def show
    user = User.find(params[:id])
    events = Event.all
    created_events = events.where(:creator_id => user.id)
    @events = user.attended_events
    @upcoming_events = 'Upcoming'
    @previous_events = 'Previous'
  end


end

private

def user_params
  params.require(:user).permit(:name)
end
