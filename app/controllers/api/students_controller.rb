class Api::StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  require 'csv'
  require 'tempfile'
  
  def index
    @students = Student.all
    render json: @students
  end

  def show
    the_id = params[:id]
    @student = Student.find_by(id: the_id)
    render json: @student
  end

  def create
    @student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      )
    @student.save
    render :show
  end

  def update
    the_id = params[:id]
    @student = Student.find_by(id: the_id)
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name

    @student.save
    render:show
  end

  def destroy
    @student = Student.find_by(id: params[:id])

    if @student.present?
      @student.destroy
    end
    render json: true
  end

  def assign_to_course
    student_id = params[:id]&.to_i
    course_id = params[:course_id]&.to_i
    grade = params[:grade]&.to_i

    StudentCourse.find_or_create_by({
      student_id: student_id,
      course_id: course_id,
      grade: grade})
    render json: true
  end

  # student id 1
  # enrolled courses id 10 11

  # def update_grades
  #   student_id = params[:id]&.to_i 1
  #   course_id = params[:course_id]&.to_i 10
  #   grade = params[:grade]&.to_i 90

  #    @student_course = Student_course.update(student_id: student_id, course_id: course_id)

  #    @student_course.grade = params[:grade] || @student_course.grade
  #    @student_course.save
  #    render json: true
  # end

  def import
    # binding.pry
    CSV.foreach(params[:file].tempfile, headers: true) do |row|
      StudentCourse.find_or_create_by({student_id: row['student_id'], course_id: row['course_id'], grade: row['grade']})
    end
    render json: true
  end

end
