class AddBankTypeToBanks < ActiveRecord::Migration
  def change
    add_column :banks, :bank_type, :string
  end
end
