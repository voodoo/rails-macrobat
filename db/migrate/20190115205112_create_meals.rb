class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.belongs_to :user, foreign_key: true
      t.string :carbs
      t.string :fats
      t.string :prots
      t.string :calories
      t.string :fiber

      t.timestamps
    end
  end
end
