require 'digest/md5'

module PostsHelper
  def gravatar user
    digest = Digest::MD5::hexdigest(user.email)
    image_tag("http://gravatar.com/avatar/#{digest}?s=48")
  end

  def min_post_representation(text)
    link_hashtags(strip_tags(text))
  end

  private

  def link_hashtags(text)
    text.gsub(/#\w+/){ |match| link_to match, hashtag_path(match[1..-1]) }.html_safe
  end
end