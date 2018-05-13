class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_notifications, if: :user_signed_in?

  def set_notifications
    @notifications = Notification.where(recipient: current_user).recent
  end

end
