class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.integer :invitation_id
      t.string :lastname
      t.string :firstname
      t.string :lastname_kana
      t.string :firstname_kana
      t.integer :postcode
      t.string :address
      t.string :building_name
      t.integer :phonenumber
      t.string :email
      t.string :allergy
      t.text :message

      t.timestamps
    end
  end
end
