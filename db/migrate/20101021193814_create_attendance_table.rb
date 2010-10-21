class CreateAttendanceTable < ActiveRecord::Migration
  def self.up
    create_table :attendances do |t|
      t.references :student
      t.references :clazz
      t.date :date
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :attendances
  end
end
