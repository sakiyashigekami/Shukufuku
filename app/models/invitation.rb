class Invitation < ApplicationRecord
  belongs_to :user
  has_one :attendance
end
