class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :detail
      t.integer :rating
      t.boolean :recommend
      t.integer :user_id
      t.integer :food_truck_id

      t.timestamps
    end
  end
end
