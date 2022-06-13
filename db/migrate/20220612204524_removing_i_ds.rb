class RemovingIDs < ActiveRecord::Migration[7.0]
  def change
    remove_column :courses, :student_id, :integer
    remove_column :students, :course_id, :integer
    remove_column :teachers, :course_id, :integer
  end
end
