class Search
  attr_reader :term

  def initialize(options = {})
    @term = options.fetch(:term, '')
  end

  def posts
    Post.text_posts.where(content_id: text_posts)
  end

  def to_partial_path
    'searches/search'
  end

  private

  def text_posts
    TextPost.where('body ILIKE ?', search_term)
  end

  def search_term
    "%#{term}%"
  end
end