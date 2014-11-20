class ApplicationsController < ApplicationController

  def new
    @application = Application.new 
  end

  def index
    @applications = Application.all
  end

  def edit
      @application = Application.find(params[:id])
  end
  
 
  def create
    @application = Application.new(application_params)#the P%µ££%% d'erreur était là !!!
    if @application.save
      redirect_to @application
    else
      render "new"
    end
  end

  def update
    @application = Application.find(params[:id])
 
    if @application.update(application_params)
      redirect_to @application
    else
      render 'edit'
    end
  end
 

  def show
    @application = Application.find(params[:id])
  end



private
  def application_params
    params.require(:application).permit(:why_us, :computer_experiences)
  end

  
end
