class StudentCourse < ApplicationRecord
  require 'csv'
  belongs_to :student
  belongs_to :course

  attribute :letter_grade

  def letter_grade
    case grade
    when 0..59
      "F"
    when 60..62
      "D-"
    when 63..67
      "D"
    when 68..69
      "D+"
    when 70..72
      "C-"
    when 73..77
      "C"
    when 78..79
      "C+"
    when 80..82
      "B-"
    when 83..87
      "B"
    when 88..89
      "B+"
    when 90..92
      "A-"
    when 93..97
      "A"
    when 98..100
      "A+"
    end
  end
  
end

