class CreateUsersGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :users_goals do |t|
  	t.integer :user_id
  	t.integer :goal_id
  	t.timestamps
    end
  end
end
