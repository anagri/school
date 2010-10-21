class CreateClazzesStudentsTable < ActiveRecord::Migration
  def self.up
    create_table :clazzes_students, :id => false do |t|
      t.references :clazz
      t.references :student
      t.timestamps
    end
  end

  def self.down
    drop_table :clazzes_students
  end
end
