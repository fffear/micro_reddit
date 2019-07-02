class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name, presence: true, length: { in: 3..20 }, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_many :posts
end


# must enforce uniqueness at both database and model level for name and email
