class PhotoPostsController < ApplicationController
  def create
    content = build_content
    post = current_user.posts.build(content: content)
    if post.save
      redirect_to dashboard_path
    else
      flash.alert = t('.no_post')
      redirect_to dashboard_path
    end
  end

  private

  def build_content
    PhotoPost.new(photo_posts_params)
  end

  def photo_posts_params
    params.fetch(:photo_post, {}).permit(:image)
  end
end