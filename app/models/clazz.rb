class Clazz < ActiveRecord::Base
  has_and_belongs_to_many :students
  has_and_belongs_to_many :teachers
  belongs_to :clazz_info
  
  validates_presence_of :name, :year, :clazz_info
end