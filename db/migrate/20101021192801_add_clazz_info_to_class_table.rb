class AddClazzInfoToClassTable < ActiveRecord::Migration
  def self.up
    add_column :clazzes, :clazz_info_id, :integer
  end

  def self.down
    remove_column :clazzes, :clazz_info_id
  end
end
