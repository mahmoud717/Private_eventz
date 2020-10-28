class EventAttendeesController < ApplicationController
    def attend
        @user = User.find(session["current_user"]["id"])
        @event = Event.find(params[:id])
        @user.event_attended << @event if !@user.event_attended.include?(@event)
        redirect_to event_path
    end
    def cancel
        @user = User.find(session["current_user"]["id"])
        @event = Event.find(params[:id])
        @user.event_attended.delete(@event) if @user.event_attended.include?(@event)
        redirect_to event_path
    end
end