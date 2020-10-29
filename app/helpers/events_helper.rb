module EventsHelper
  def user_attending?(_event)
    if session.key?('current_user')
      user = User.find(session['current_user']['id'])
      if user.event_attended.include?(@event)
        true
      else
        false
      end
    else
      false
    end
  end
end
