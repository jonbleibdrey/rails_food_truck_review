class Review < ApplicationRecord
    belongs_to :user
    belongs_to :food_truck

    # validates :title, presence: { message: "must have title" }
    # validates :detail, presence: { message: "must have details" }
    # validates :rating, length: { in: 1..5 }
    # validates :recommend, inclusion: [ true, false ] 
end
