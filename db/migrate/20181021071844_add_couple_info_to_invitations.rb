class AddCoupleInfoToInvitations < ActiveRecord::Migration[5.1]
  def change
    add_column :invitations, :groom_last, :string
    add_column :invitations, :groom_first, :string
    add_column :invitations, :bride_last, :string
    add_column :invitations, :bride_first, :string
    add_column :invitations, :groom_last_kana, :string
    add_column :invitations, :groom_first_kana, :string
    add_column :invitations, :bride_last_kana, :string
    add_column :invitations, :bride_first_kana, :string
  end
end
