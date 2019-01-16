class CreateMessageCards < ActiveRecord::Migration[5.1]
  def change
    create_table :message_cards do |t|
      t.integer :user_id
      t.integer :msg_design_id
      t.string :title
      t.datetime :date
      t.text :greeting
      t.string :groom_last
      t.string :groom_first
      t.string :groom_last_kana
      t.string :groom_first_kana
      t.string :bride_last
      t.string :bride_first
      t.string :bride_last_kana
      t.string :bride_first_kana
      t.boolean :public, default: false, null: false

      t.timestamps
    end
  end
end
