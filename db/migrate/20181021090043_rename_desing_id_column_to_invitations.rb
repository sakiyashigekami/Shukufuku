class RenameDesingIdColumnToInvitations < ActiveRecord::Migration[5.1]
  def change
    rename_column :invitations, :desing_id, :design_id
  end
end
