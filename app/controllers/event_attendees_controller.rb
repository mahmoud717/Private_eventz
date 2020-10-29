class EventAttendeesController < ApplicationController
  before_action :logged_in?
  def attend
    @user = User.find(session['current_user']['id'])
    @event = Event.find(params[:id])
    @user.event_attended << @event unless @user.event_attended.include?(@event)
    redirect_to event_path
  end

  def cancel
    @user = User.find(session['current_user']['id'])
    @event = Event.find(params[:id])
    @user.event_attended.delete(@event) if @user.event_attended.include?(@event)
    redirect_to event_path
  end
  private
  def logged_in?
    if session.key?('current_user') ? true : false
      render 'new'
    else
      redirect_to login_path, notice: 'You need to sign in before attending an event.'
    end
  end
end
