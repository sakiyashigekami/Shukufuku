class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.integer :invitation_id
      t.string :name
      t.string :kana
      t.integer :postcode
      t.string :address
      t.integer :phonenumber
      t.string :email
      t.string :allergy
      t.text :message

      t.timestamps
    end
  end
end
