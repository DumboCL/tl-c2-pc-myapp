class CreateGroupsUsersJoinTable < ActiveRecord::Migration
  def change
    create_join_table :groups, :users do |t|
      t.belongs_to :group, index: true
      t.belongs_to :user, index: true
      # t.index [:group_id, :user_id]
      # t.index [:user_id, :group_id]
    end
  end
end
