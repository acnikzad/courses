class Api::CoursesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @courses = Course.all
    render json: @courses
  end 

  def show
    the_id = params[:id]
    @course = Course.find_by(id: the_id)
    render json: @course 
  end

  def create
    @course = Course.create(
      name: params[:name]
      )
    @course.save
    render :show
  end

  def update
    the_id = params[:id]
    @course = Course.find_by(id: the_id)
    @course.name = params[:name] || @course.name

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
