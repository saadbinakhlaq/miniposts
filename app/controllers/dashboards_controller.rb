class DashboardsController < ApplicationController
  def show
    @text_post = TextPost.new
    @photo_post = PhotoPost.new
    @posts = current_user.posts
  end
end