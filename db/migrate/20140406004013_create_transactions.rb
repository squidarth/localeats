class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :foursquare_id
      t.string :venue_name
      t.integer :user_id
      t.string :amount
    end
  end
end
