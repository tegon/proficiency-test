class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      flash[:success] = 'Curso criado com sucesso!'
      redirect_to courses_path
    else
      render action: :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update_attributes(course_params)
      flash[:sucess] = 'Curso atualizado com sucesso!'
      redirect_to courses_path
    else
      render action: :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])

    if @course.destroy
      flash[:sucess] = 'Curso apagado!'
      redirect_to courses_path
    else
      render action: :index
    end
  end

  private
  def course_params
    params.require(:course).permit(:name, :description, :status)
  end
end