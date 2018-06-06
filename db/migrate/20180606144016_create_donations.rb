class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.references :donor, foreign_key: true
      t.references :fund, foreign_key: true
      t.integer :amount
    end
  end
end
