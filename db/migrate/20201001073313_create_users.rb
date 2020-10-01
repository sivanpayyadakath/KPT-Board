class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :name
      t.string :password_digest, null: false
      t.string :avatar
      t.string :bio

      t.timestamps
    end
  end
end
