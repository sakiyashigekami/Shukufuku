class Invitation < ApplicationRecord
  belongs_to :user
  has_many :attendance_forms
end
