class ChangeDonationAmountColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :donations, :amount, :decimal
  end
end
