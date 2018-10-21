class RenameTypeColumnToInvitations < ActiveRecord::Migration[5.1]
  def change
    rename_column :invitations, :type, :type_id
  end
end
