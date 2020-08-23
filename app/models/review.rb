class Review < ApplicationRecord
    belongs_to :user
    belongs_to :food_truck

    validates :title, presence: true
    validates :detail, presence: true
    validates :rating, length: { in: 1..5 }
    validates :recommend, inclusion: [ true, false ] 
  
end
