class FoodTruck < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :owner, class_name: "User", foreign_key: :user_id

    # validates :name, presence: { message: "must have name" }
    # validates :category, presence: { message: "must have category" }
    # validates :phone, length: { in: 10..11 }
    
    



end
