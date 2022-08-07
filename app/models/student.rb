class Student < ApplicationRecord
  has_many :student_courses
  has_many :courses, through: :student_courses

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      #If the ID is found, call the record, if not found, create a new one
      student = find_by(edinet: row["edinet"], rec_date: row["rec_date"], account_name: row["account_name"]) || new
      #Get data from CSV and set
      student.attributes = row.to_hash.slice(*updatable_attributes)
      #save
      financial.save
    end
  end

end
