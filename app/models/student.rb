class Student < ActiveRecord::Base
  enum status: [:active, :inactive]
  validates_presence_of :name, :register_number, :status
end