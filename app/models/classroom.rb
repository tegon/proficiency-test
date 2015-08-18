class Classroom < ActiveRecord::Base
  belongs_to :student, inverse_of: :classrooms
  belongs_to :course, inverse_of: :classrooms

  before_create :set_entry_at

  private
  def set_entry_at
    self.entry_at = Time.now
  end
end