class Review < ApplicationRecord
  belongs_to :flat
  validates :review, length: { minimum: 10 }, presence: true
  validates :rating, length: { in: 0..5 }, presence: true, numericality: { only_integer: true }
end
