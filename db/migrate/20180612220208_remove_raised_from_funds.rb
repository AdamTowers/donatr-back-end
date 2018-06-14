class RemoveRaisedFromFunds < ActiveRecord::Migration[5.1]
  def change
    remove_column :funds, :raised
  end
end
