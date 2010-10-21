class CreateClazzesTeachersTable < ActiveRecord::Migration
  def self.up
    create_table :clazzes_teachers, :id => false do |t|
      t.references :clazz
      t.references :teacher
      t.timestamps
    end
  end

  def self.down
    drop_table :clazzes_teachers
  end
end
