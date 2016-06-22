module UsersHelper
  def follow_button(user)
    if current_user.following? user
      button_to t('.unfollow'), user_follow_path(user), method: :delete, class: 'pure-button follow_button'
    else
      button_to t('.follow'), user_follow_path(user), class: 'pure-button follow_button'
    end
  end
end