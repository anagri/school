class Attendance < ActiveRecord::Base
  belongs_to :clazz
  belongs_to :student
end