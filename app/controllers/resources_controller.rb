class ResourcesController < ApplicationController

  def fetchMe(url)
    jsonData = LinkThumbnailer.generate(url).to_json
    hashData = JSON.parse(jsonData)
    if hashData['favicon'].match(/^http?(.*)/)
      avatar = hashData['favicon']
    else
    avatar = url + hashData['favicon']
  end
    finalData = {url: hashData['url'], description: hashData['description'], title: hashData['title'], avatar: avatar}
  end

  def index
    @resources = Resource.all
    # @data = fetchMe('https://stackoverflow.com/questions')
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
    data = fetchMe(params[:resource]["url"])
    data[:discipline] = params[:resource]["discipline"]
    @resource = Resource.new(data)
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
    params.require(:resource).permit(:url, :title, :description, :discipline, :avatar)
  end
end
