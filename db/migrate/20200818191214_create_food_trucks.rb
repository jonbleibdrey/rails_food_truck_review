class CreateFoodTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :food_trucks do |t|
      t.string :name
      t.string :category
      t.integer :phone
      t.integer :user_id
      t.integer :review_id
      t.timestamps
    end
  end
end
