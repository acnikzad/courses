class Api::CoursesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @courses = Course.includes(:teacher, :students).all
    render
  end 

  def show
    the_id = params[:id]
    @course = Course.find_by(id: the_id)
    render json: @course
  end

  def create
    @course = Course.create(
      name: params[:name],
      teacher_id: params[:teacher_id],
      student_id: params[:student_id]
      )
    @course.save
    render :show
  end

  def update
    the_id = params[:id]
    @course = Course.find_by(id: the_id)
    @course.name = params[:name] || @course.name
    @course.teacher_id = params[:teacher_id] || @course.teacher_id
    @course.student_id = params[:student_id] || @course.student_id

    @course.save
    render :show
  end

  def destroy
    @course = Course.find_by(id: params[:id])

    if @course.present?
      @course.destroy
      @course.save
    end

    render
  end
end
