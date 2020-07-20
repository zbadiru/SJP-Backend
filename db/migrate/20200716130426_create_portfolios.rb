class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.integer :user_id, default: 1 
      t.integer :photoshoot_id

      t.timestamps
    end
  end
end
