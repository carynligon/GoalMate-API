class DropJoinTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :users_goals
    drop_table :goals_users
  end
end
