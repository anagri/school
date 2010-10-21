class CreateClazzInfosTable < ActiveRecord::Migration
  def self.up
    create_table :clazz_infos do |t|
      t.string :section
    end
  end

  def self.down
    drop_table :clazz_infos
  end
end
