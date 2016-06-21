class FollowingRelationshipsController < ApplicationController
  def create
    user = User.find params[:user_id]
    current_user.follow user
    redirect_to user, notice: t('.following')
  end

  def destroy
    user = User.find params[:user_id]
    current_user.unfollow user
    redirect_to user, notice: t('.not_following')
  end

  private

  def user
    @_user ||= User.find(params[:user_id])
  end
end