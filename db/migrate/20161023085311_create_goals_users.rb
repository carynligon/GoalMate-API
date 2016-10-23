class CreateGoalsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :goals_users do |t|
      t.integer :goal_id
      t.integer :user_id
      t.timestamps
    end
  end
end
