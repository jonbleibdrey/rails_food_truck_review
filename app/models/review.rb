class Review < ApplicationRecord
    has_many :food_trucks
    has_many :users, through: :food_trucks 
end
