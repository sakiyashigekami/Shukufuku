class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :remember_digest
      t.string :activation_digest
      t.boolean :activated
      t.datetime :activated_at
      t.string :user_image
      t.string :provider
      t.string :uid
      t.string :reset_digest
      t.datetime :reset_sent_at
      t.string :groom_last
      t.string :groom_first
      t.string :bride_last
      t.string :bride_first
      t.string :groom_last_kana
      t.string :groom_first_kana
      t.string :bride_last_kana
      t.string :bride_first_kana

      t.timestamps
    end
  end
end
