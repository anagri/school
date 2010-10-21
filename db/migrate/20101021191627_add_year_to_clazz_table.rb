class AddYearToClazzTable < ActiveRecord::Migration
  def self.up
    add_column :clazzes, :year, :string, :length => 4
  end

  def self.down
    remove_column :clazzes, :year
  end
end
