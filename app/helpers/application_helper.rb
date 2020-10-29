module ApplicationHelper
  def logged_in?
    session.key?('current_user') ? true : false
  end

  def user?(user_id)
    session['current_user']['id'] == user_id if logged_in?
  end
end
