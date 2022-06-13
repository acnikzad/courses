class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :courses
  # has_many :courses, through :student_courses
end
