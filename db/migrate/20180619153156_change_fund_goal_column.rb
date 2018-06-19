class ChangeFundGoalColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :funds, :goal, :decimal
  end
end
