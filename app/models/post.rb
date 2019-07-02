class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true,
                   length: { minimum: 1 }

  belongs_to :user
end
