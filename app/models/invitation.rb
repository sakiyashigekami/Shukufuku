class Invitation < ApplicationRecord
  belongs_to :user
  has_one :attendance_form
end
