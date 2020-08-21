class Review < ApplicationRecord
    belongs_to :user
    belongs_to :food_truck

    validates :title, presence: true
    validates :detail, presence: true
    validates :rating, length: { in: 1..5 }
    # validates :rating, inclusion: [ 1, 2, 3, 4, 5 ] 
    validates :recommend, inclusion: [ true, false ] 
    #validates :recommend, allow_blank: true
end
