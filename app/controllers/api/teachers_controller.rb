class Api::TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show

    the_id = params[:id]
    first_name: params[:first_name]
    last_name: params[:last_name]
    render jason: @teacher
  end

  def create
    @teacher =Teacher.create (
      label

      )
  end


end
