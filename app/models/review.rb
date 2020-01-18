class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates_length_of :author, maximum: 40
end
