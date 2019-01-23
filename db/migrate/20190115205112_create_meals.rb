class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :carbs
      t.integer :fats
      t.integer :prots
      t.integer :calories
      t.integer :fiber
      t.integer :weight
      t.datetime :date
      t.timestamps
    end
  end
end
