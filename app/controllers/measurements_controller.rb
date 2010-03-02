class MeasurementsController < ApplicationController
  def index
    @measurements = Measurement.all
  end
  
  def show
    @measurement = Measurement.find(params[:id])
  end
  
  def new
    @measurement = Measurement.new
  end
  
  def create
    @measurement = Measurement.new(params[:measurement])
    if @measurement.save
      flash[:notice] = "Successfully created measurement."
      redirect_to @measurement
    else
      render :action => 'new'
    end
  end
  
  def edit
    @measurement = Measurement.find(params[:id])
  end
  
  def update
    @measurement = Measurement.find(params[:id])
    if @measurement.update_attributes(params[:measurement])
      flash[:notice] = "Successfully updated measurement."
      redirect_to @measurement
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @measurement = Measurement.find(params[:id])
    @measurement.destroy
    flash[:notice] = "Successfully destroyed measurement."
    redirect_to measurements_url
  end
end
