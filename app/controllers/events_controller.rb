class EventsController < ApplicationController
  def new
  end

  def create
    user.event.build(creator_id: user.id)
  end

  def index
    user = User.find_by(id: current_user.id)

    @events = Event.all
  end

end
