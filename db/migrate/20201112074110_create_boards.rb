class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.datetime :date, null: false, unique: true

      t.timestamps
    end
  end
end
