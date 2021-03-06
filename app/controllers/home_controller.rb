class HomeController < ApplicationController
  before_filter :checked_logged_in_user

  def show
  end

  private

  def checked_logged_in_user
    if current_user
      redirect_to dashboard_path
    else
      redirect_to user_session_path
    end
  end
end