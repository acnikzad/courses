class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :students, :teachers, :student_courses
end
