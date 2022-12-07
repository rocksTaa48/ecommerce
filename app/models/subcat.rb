class Subcat < ApplicationRecord

  has_many :items
  belongs_to :categories
end
