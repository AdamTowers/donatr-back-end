class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|
      t.references :organization, foreign_key: true
      t.string :title
      t.string :description
      t.integer :goal
    end
  end
end
