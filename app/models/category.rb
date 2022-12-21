class Category < ApplicationRecord
  validates :title, presence: true #, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates :body, presence: true #, uniqueness: { case_sensitive: false }, length: {maximum: 100}

  has_many :subcats
  has_many :items
end
