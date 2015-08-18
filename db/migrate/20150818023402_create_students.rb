class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :register_number
      t.integer :status
      t.timestamps
    end

    add_index :students, :name
    add_index :students, :register_number
    add_index :students, :status
  end
end
