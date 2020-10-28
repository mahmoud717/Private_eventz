module EventsHelper
    def user_attending?(event)
       user = User.find(session["current_user"]["id"])
        if user.event_attended.include?(@event)
            true
        else
            false
        end
    end
end
