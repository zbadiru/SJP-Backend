class CreatePhotoshoots < ActiveRecord::Migration[6.0]
  def change
    create_table :photoshoots do |t|
      t.string :name
      t.integer :portfolio_id, default: 1
      
      t.timestamps
    end
  end
end
