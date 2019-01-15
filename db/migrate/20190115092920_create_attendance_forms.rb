class CreateAttendanceForms < ActiveRecord::Migration[5.1]
  def change
    create_table :attendance_forms do |t|

      t.timestamps
    end
  end
end
