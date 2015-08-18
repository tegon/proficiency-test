class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :student
      t.references :course
      t.datetime :entry_at
      t.timestamps
    end

    add_index :classrooms, :student_id
    add_index :classrooms, :course_id
    add_index :classrooms, [:student_id, :course_id]
    add_index :classrooms, :entry_at
  end
end
