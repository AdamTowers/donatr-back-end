class AddRaisedToFunds < ActiveRecord::Migration[5.1]
  def change
    add_column :funds, :raised, :integer, :default => 0
  end
end
