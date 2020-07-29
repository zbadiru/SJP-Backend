class CreateMerchandises < ActiveRecord::Migration[6.0]
  def change
    create_table :merchandises do |t|
      t.string :name
      t.string :img
      t.float :price
      t.boolean :inCart, default: false
      t.integer :count, default: 0
      t.float :total, default: 0.00
      
      t.timestamps
    end
  end
end
