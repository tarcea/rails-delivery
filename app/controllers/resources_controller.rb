class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def new
    #if user_signed_in? && current_user.email == "contact@gheorghetarcea.com"
      @resource = Resource.new
    #end
  end

  def show
    @resource = Resource.find(params[:id])
    # raise
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      redirect_to resources_path, notice: 'created OK'
    else
      render :new
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])
    @resource.update(resource_params)
    redirect_to resources_path, notice: 'update done'
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
    redirect_to resources_path
    end

  private

  def resource_params
    params.require(:resource).permit(:url, :description, :discipline)
  end
end
