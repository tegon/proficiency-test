class Course < ActiveRecord::Base
  enum status: [:active, :inactive]
  validates_presence_of :name, :description, :status
end