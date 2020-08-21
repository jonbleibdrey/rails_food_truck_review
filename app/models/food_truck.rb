class FoodTruck < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :owner, class_name: "User", foreign_key: :user_id

    validates :name, presence: true
    validates :category, presence: true
    validates :phone, length: { is: 10 }
    validates :current_location, presence: true
    
   
    scope :mexican, -> {self.where(category: "mexican")}
    scope :italian, -> {self.where(category: "italian")}
    scope :american, -> {self.where(category: "american")}



end
