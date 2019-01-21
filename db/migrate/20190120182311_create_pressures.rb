class CreatePressures < ActiveRecord::Migration[5.2]
  def change
    create_table :pressures do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :sys
      t.integer :dias
      t.integer :pulse

      t.timestamps
    end
  end
end
