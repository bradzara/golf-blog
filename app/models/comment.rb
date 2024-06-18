class Comment < ApplicationRecord
  belongs_to :blog_post

  validates :body, presence: true, length: { in: 1..180 }
end
