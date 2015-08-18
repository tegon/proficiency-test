class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      flash[:success] = 'Aluno criado com sucesso!'
      redirect_to students_path
    else
      render action: :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(student_params)
      flash[:sucess] = 'Aluno atualizado com sucesso!'
      redirect_to students_path
    else
      render action: :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])

    if @student.destroy
      flash[:sucess] = 'Aluno apagado!'
      redirect_to students_path
    else
      render action: :index
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :register_number, :status)
  end
end