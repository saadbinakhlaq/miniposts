class Post < ActiveRecord::Base
  belongs_to :user
  default_scope { order('created_at DESC') }
  belongs_to :content, polymorphic: true
  validates_associated :content

  def self.text_posts
    where(content_type: 'TextPost')
  end
end
