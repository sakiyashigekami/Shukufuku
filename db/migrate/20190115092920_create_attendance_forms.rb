class CreateAttendanceForms < ActiveRecord::Migration[5.1]
  def change
    create_table :attendance_forms do |t|
      t.integer :user_id
      t.boolean :name, default: true, null: false
      t.integer :name_sel, default: 0
      t.boolean :kana, default: false, null: false
      t.integer :kana_sel, default: 1
      t.boolean :postcode, default: false, null: false
      t.integer :postcode_sel, default: 1
      t.boolean :address, default: false, null: false
      t.integer :address_sel, default: 1
      t.boolean :phonenumber, default: false, null: false
      t.integer :phonenumber_sel, default: 1
      t.boolean :email, default: true, null: false
      t.integer :email_sel, default: 0
      t.boolean :allergy, default: false, null: false
      t.integer :allergy_sel, default: 1
      t.boolean :message, default: false, null: false
      t.integer :message_sel, default: 1

      t.timestamps
    end
  end
end
