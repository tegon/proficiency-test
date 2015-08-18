class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)

    if @classroom.save
      flash[:success] = 'Matrícula criada com sucesso!'
      redirect_to classrooms_path
    else
      render action: :new
    end
  end

  def destroy
    @classroom = Classroom.find(params[:id])

    if @classroom.destroy
      flash[:sucess] = 'Matrícula apagada!'
      redirect_to classrooms_path
    else
      render action: :index
    end
  end

  private
  def classroom_params
    params.require(:classroom).permit(:student_id, :course_id)
  end
end