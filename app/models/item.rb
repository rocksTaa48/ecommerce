class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates :body, presence: true

  belongs_to :user
  belongs_to :subcat
  belongs_to :category
end