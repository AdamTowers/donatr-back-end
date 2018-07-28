class AddActiveToFunds < ActiveRecord::Migration[5.1]
  def change
    add_column :funds, :active, :boolean, :default => true
  end
end
