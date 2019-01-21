class CreateGlucoses < ActiveRecord::Migration[5.2]
  def change
    create_table :glucoses do |t|
      t.belongs_to :user
      t.integer :reading

      t.timestamps
    end
  end
end
