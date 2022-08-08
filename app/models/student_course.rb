class StudentCourse < ApplicationRecord
  require 'csv'
  belongs_to :student
  belongs_to :course



end
