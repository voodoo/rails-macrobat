class CreateKetos < ActiveRecord::Migration[5.2]
  def change
    create_table :ketos do |t|
      t.belongs_to :user, foreign_key: true
      t.decimal :reading, precision: 10, scale: 2
      t.timestamps
    end
  end
end
