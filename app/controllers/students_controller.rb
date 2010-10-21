class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
    render :new
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
  end
end