class CreateClazzTable < ActiveRecord::Migration
  def self.up
    create_table :clazz do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :clazz
  end
end
