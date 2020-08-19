class FoodTruck < ApplicationRecord
    belongs_to :review, optional: true
    belongs_to :user


end
