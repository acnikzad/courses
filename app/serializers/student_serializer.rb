class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :courses, :student_courses
  
  #has_many :courses, through :student_courses
  #has_many :student_courses
end
