class Product < ApplicationRecord
  belongs_to :brand

  validates :name, presence: true
  validates :price, numericality: { less_than_or_equal_to: 100,  only_integer: true }
end
