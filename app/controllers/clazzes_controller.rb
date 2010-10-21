class ClazzesController < ApplicationController
  def index
    @clazzes = Clazz.all
  end
  
  def new
    @clazz = Clazz.new
  end
  
  def create
    @clazz = Clazz.new(params[:clazz])
    if @clazz.save
      redirect_to clazz_path(@clazz)
    else
      render :new
    end
  end
  
  def edit
    @clazz = Clazz.find(params[:id])
    render :new
  end
  
  def update
    @clazz = Clazz.find(params[:id])
    if @clazz.update_attributes(params[:clazz])
      redirect_to clazz_path(@clazz)
    else
      render :new
    end
  end
  
  def destroy
    @clazz = Clazz.find(params[:id])
    @clazz.destroy
    redirect_to clazzes_path
  end
  
  def show
    @clazz = Clazz.find(params[:id])
  end
end