class Review < ApplicationRecord
    belongs_to :user
    belongs_to :food_truck

    validates :title, presence: true
    validates :detail, presence: true
    validates :rating, length: { in: 1..5 }
  
    scope :five_star_rating, -> {self.where(rating: 5)}
  
end
