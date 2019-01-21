class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.integer :user_id
      t.integer :type_id
      t.integer :design_id
      t.string :title
      t.string :groom_msg
      t.string :bride_msg
      t.text :greeting
      t.datetime :date1
      t.string :openhour1
      t.string :openminute1
      t.string :starthour1
      t.string :startminute1
      t.string :place1
      t.string :address1
      t.string :phonenumber1
      t.string :place_url1
      t.text :note1
      t.datetime :date2
      t.string :openhour2
      t.string :openminute2
      t.string :starthour2
      t.string :startminute2
      t.string :place2
      t.string :address2
      t.string :phonenumber2
      t.string :place_url2
      t.text :note2
      t.string :groom_last
      t.string :groom_first
      t.string :bride_last
      t.string :bride_first
      t.string :groom_last_kana
      t.string :groom_first_kana
      t.string :bride_last_kana
      t.string :bride_first_kana
      t.boolean :public, default: false, null: false

      t.timestamps
    end
  end
end
