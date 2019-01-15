class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :remember_digest
      t.string :activation_digest
      t.boolean :activated, default: false, null: false
      t.datetime :activated_at
      t.string :user_image
      t.string :provider
      t.string :uid
      t.string :reset_digest
      t.datetime :reset_sent_at

      t.timestamps
    end
  end
end
