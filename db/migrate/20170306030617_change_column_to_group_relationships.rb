class ChangeColumnToGroupRelationships < ActiveRecord::Migration[5.0]
  def change
    add_column :group_relationships, :user_id, :integer
    rename_column :group_relationships, :group, :group_id
    change_column :group_relationships, :group_id, :integer
  end
end
