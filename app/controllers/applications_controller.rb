class ApplicationsController < ApplicationController

  def new
    @application = Application.new 
  end

  def index
    @applications = Application.all
  end
  
 
  def create
    @application = Application.new(application_params)#the P%µ££%% d'erreur était là !!!
    @application.save
    redirect_to @application
  end
 

  def show
    @application = Application.find(params[:id])
  end



private
  def application_params
    params.require(:application).permit(:why_us, :computer_experiences)
  end

  
end
