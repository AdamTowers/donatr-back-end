class AddPictureToFunds < ActiveRecord::Migration[5.1]
  def change
    add_column :funds, :picture, :string
  end
end
