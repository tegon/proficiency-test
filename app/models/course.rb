class Course < ActiveRecord::Base
  has_many :classrooms, inverse_of: :course
  has_many :students, through: :classrooms
  enum status: [:active, :inactive]
  validates_presence_of :name, :description, :status
  validates_uniqueness_of :name
end