class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.integer :user_id
      t.string :access_token
    end
  end
end
