class AttendancesController < ApplicationController
  def index
    @clazz = Clazz.find(params[:clazz_id])
    @attendances = @clazz.attendances
  end
  
  def new
    @clazz = Clazz.find(params[:clazz_id])
    @attendance = @clazz.attendances.build
  end
  
  def create
    @clazz = Clazz.find(params[:clazz_id])
    @attendance = @clazz.attendances.build(params[:attendance])
    if @attendance.save
      redirect_to clazz_attendances_path(@clazz)
    else
      render :new
    end
  end
  
  def edit
    @attendance = Attendance.find(params[:id])
    @clazz = @attendance.clazz
    render :new
  end
  
  def update
    @attendance = Attendance.find(params[:id])
    @clazz = @attendance.clazz
    if @attendance.update_attributes(params[:attendance])
      redirect_to clazz_attendances_path(@clazz)
    else
      render :new
    end
  end
  
  def destroy
    attendance = Attendance.find(params[:id])
    clazz = attendance.clazz
    attendance.destroy
    redirect_to clazz_attendances_path(clazz)
  end
end