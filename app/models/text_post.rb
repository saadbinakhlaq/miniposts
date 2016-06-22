class TextPost < ActiveRecord::Base
  validates :body, presence: true, length: { minimum: 20 }
end
