class AddAddressToInvitations < ActiveRecord::Migration[5.1]
  def change
    add_column :invitations, :address1, :string
    add_column :invitations, :address2, :string
  end
end
