class Clazz < ActiveRecord::Base
  has_and_belongs_to_many :students
  has_and_belongs_to_many :teachers
  
  validates_presence_of :name, :year
  has_one clazz_info
end