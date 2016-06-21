class DashboardsController < ApplicationController
  def show
    @text_post = TextPost.new
    @posts = current_user.posts
  end
end