class Comment < ApplicationRecord
  validates :body, presence: true, length: { minimum: 1 }
  validates :user_id, presence: true, numericality: { greater_than: 0 }
  validates :post_id, presence: true, numericality: { greater_than: 0 }

  belongs_to :user
  belongs_to :post
end
