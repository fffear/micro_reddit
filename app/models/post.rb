class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 1 }
  validates :user_id, presence: true, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :comments
end
