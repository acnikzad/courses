class Api::StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
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
      @student.save
    end
    render
  end

  def assign_to_course
    student_id = params[:id]&.to_i
    course_id = params[:course_id]&.to_i

    StudentCourse.find_or_create_by({student_id: student_id, course_id: course_id})
    render json: true
  end

end
