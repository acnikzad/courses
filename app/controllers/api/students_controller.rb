class Api::StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    the_id = params[:id]
    @student = Student.find_by(id: the_id)
    render json: @student
  end

  def create
    @student = Student.create (
      first_name: params[:first_name],
      last_name: params[:last_name],
      course_id: params[:course_id]
      )
    @student.save
    render:show
  end

  def update
    the_id = params[:id]
    @student = Student.find_by(id: the_id)
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.course_id = params[:course_id] || @student.course_id

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
end
