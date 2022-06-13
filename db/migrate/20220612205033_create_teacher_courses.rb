class CreateTeacherCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_courses do |t|
      t.integer :teacher_id
      t.integer :course_id

      t.timestamps
    end

    add_index :teacher_courses, %i[teacher_id course_id], unique: true
  end
end
