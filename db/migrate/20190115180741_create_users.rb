class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, index: {unique: true}
      t.string :email, index: {unique: true}
      t.string :password_digest
    end

  end
end
