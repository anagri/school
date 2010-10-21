class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(params[:teacher])
    if @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
    render :new
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update_attributes(params[:teacher])
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path
  end

  def show
    @teacher = Teacher.find(params[:id])
  end
end