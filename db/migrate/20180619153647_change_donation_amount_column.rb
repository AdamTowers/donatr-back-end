class ChangeDonationAmountColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :donations, :amount, :decimal, :precision => 9, :scale => 2
  end
end
