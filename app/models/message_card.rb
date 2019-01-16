class MessageCard < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: {message: "メッセージカードは、お一人様1枚までとなっております。"}
end
