class Invitation < ApplicationRecord
  belongs_to :user
  has_one :attendance_form
  validates :user_id, uniqueness: {message: "招待状は、結婚式の種類それぞれにつき1枚までとなっております。", scope: [:type_id]}
end
