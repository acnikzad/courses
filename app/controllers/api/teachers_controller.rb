class Api::TeachersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @teachers = Teacher.all
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
      course_id: params[:course_id]
      )
    @teacher.save
    render :show
  end

  def update
    the_id = params[:id]
    @teacher = Teacher.find_by(id: the_id)
    @teacher.first_name = params[:first_name] || @teacher.first_name
    @teacher.last_name = params[:last_name] || @teacher.last_name
    @teacher.course_id = params[:course_id] || @teacher.course_id

    @teacher.save
    render:show
  end

  def destroy
    @teacher = Teacher.find_by(id: params[:id])

    if @teacher.present?
      @teacher.destroy
      @teacher.save
    end
    render
  end
end
