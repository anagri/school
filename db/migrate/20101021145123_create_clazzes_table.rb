class CreateClazzesTable < ActiveRecord::Migration
  def self.up
    create_table :clazzes do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :clazzes
  end
end
