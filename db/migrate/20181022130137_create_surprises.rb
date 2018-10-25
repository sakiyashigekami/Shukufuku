class CreateSurprises < ActiveRecord::Migration[5.1]
  def change
    create_table :surprises do |t|
      t.integer :user_id
      t.integer :surprisecard_id
      t.string :title
      t.datetime :date
      t.text :message
      t.string :groom_last
      t.string :groom_first
      t.string :bride_last
      t.string :bride_first

      t.timestamps
    end
  end
end
