class AddingGrades < ActiveRecord::Migration[7.0]
  def change
    add_column :student_courses, :grade, :integer
  end
end
