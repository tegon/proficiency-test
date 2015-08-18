class Student < ActiveRecord::Base
  has_many :classrooms, inverse_of: :course
  has_many :courses, through: :classrooms
  enum status: [:active, :inactive]
  validates_presence_of :name, :register_number, :status
  validates_uniqueness_of :register_number
end