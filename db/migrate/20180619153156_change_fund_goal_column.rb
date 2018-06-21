class ChangeFundGoalColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :funds, :goal, :decimal, :precision => 9, :scale => 2
  end
end
