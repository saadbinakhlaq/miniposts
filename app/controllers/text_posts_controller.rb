class TextPostsController < ApplicationController
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
    TextPost.new(text_posts_params)
  end

  def text_posts_params
    params.require(:text_post).permit(:body)
  end
end