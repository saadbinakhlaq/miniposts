class PhotoPost < ActiveRecord::Base
  attr_accessor :image
  mount_uploader :image, ImageUploader
  validates :image, presence: true

  def index
    image
  end
end
