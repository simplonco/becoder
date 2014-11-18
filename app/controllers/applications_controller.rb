class ApplicationsController < ApplicationController

  def new
  end
  
  def create
    @application = Application.new(params[application_params])
    @application.save
    redirect_to @application
  end

  def show
    @application = Application.find(params[:id])
  end

  def index
    @application= Application.all
  end
 
private
  def application_params
    params.require(:application).permit(:why_us, :computer_experiences)
  end

  
end
