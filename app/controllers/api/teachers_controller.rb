class Api::TeachersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @teachers = Teacher.all
    render json: @teachers
  end

  def show
    the_id = params[:id]
    @teacher = Teacher.find_by(id: the_id)
    render json: @teacher
  end

  def create
    @teacher = Teacher.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      )
    @teacher.save
    render :show
  end

  def update
    the_id = params[:id]
    @teacher = Teacher.find_by(id: the_id)
    @teacher.first_name = params[:first_name] || @teacher.first_name
    @teacher.last_name = params[:last_name] || @teacher.last_name

    @teacher.save
    render:show
  end

  def destroy
    @teacher = Teacher.find_by(id: params[:id])

    if @teacher.present?
      @teacher.destroy!
    end
    render json: true
  end

  def assign_to_course
    teacher_id = params[:id]&.to_i
    course_id = params[:course_id]&.to_i

    TeacherCourse.find_or_create_by({teacher_id: teacher_id, course_id: course_id})
    render json: true
  end
end


#docker
#cloudways