# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

[
  {:section => '1'},
  {:section => '2'},
  {:section => '3'},
  {:section => '4'},
  {:section => '5'},
  {:section => '6'},
  {:section => '7'},
  {:section => '8'},
  {:section => '9'},
  {:section => '10'},
  {:section => '11'},
  {:section => '12'}
].each do |clazz_info|
  ClazzInfo.create!(clazz_info)
end
