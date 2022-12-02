class Category < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 5}
  validates :body, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 5}

  has_many :subcats
end
