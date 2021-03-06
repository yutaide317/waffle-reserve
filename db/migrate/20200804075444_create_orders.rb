class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :plain
      t.integer :choco
      t.integer :matcha
      t.integer :lemon
      t.integer :maple
      t.date :signup_at, null: false
      t.time :time, null: false
      t.integer :total
      t.integer :user_id
      t.timestamps
    end
  end
end
