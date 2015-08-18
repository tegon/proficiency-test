class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :status
      t.timestamps
    end

    add_index :courses, :name
    add_index :courses, :status
  end
end