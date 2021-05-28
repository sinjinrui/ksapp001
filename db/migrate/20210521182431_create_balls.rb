class CreateBalls < ActiveRecord::Migration[6.0]
  def change
    create_table :balls do |t|
      t.integer :size,              null: false, default: 100
      t.timestamps
    end
  end
end
