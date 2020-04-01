class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating,  presence: true,
                      numericality: { only_integer: true, less_than: 6, greater_than_or_equal_to: 0 }
  belongs_to :restaurant
end
