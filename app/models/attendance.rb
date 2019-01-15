class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :invitation
  belongs_to :attendanceForm
end
