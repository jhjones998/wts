module ApplicationHelper
  def is_admin?(user)
    user.admin
  end

  def is_logged_in?
    session.key?(:user_id)
  end
end
