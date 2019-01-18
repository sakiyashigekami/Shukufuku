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
      t.datetime :opentime1
      t.datetime :starttime1
      t.string :place1
      t.integer :phonenumber1
      t.string :place_url1
      t.text :note1
      t.datetime :date2
      t.datetime :opentime2
      t.datetime :starttime2
      t.string :place2
      t.integer :phonenumber2
      t.string :place_url2
      t.text :note2
      t.boolean :public, default: false, null: false

      t.timestamps
    end
  end
end
