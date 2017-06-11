class RegionsController < ApplicationController
  def index
    @regions = Region.all

    render("regions/index.html.erb")
  end

  def show
    @region = Region.find(params[:id])

    render("regions/show.html.erb")
  end

  def new
    @region = Region.new

    render("regions/new.html.erb")
  end

  def create
    @region = Region.new

    @region.region = params[:region]

    save_status = @region.save

    if save_status == true
      redirect_to("/regions/#{@region.id}", :notice => "Region created successfully.")
    else
      render("regions/new.html.erb")
    end
  end

  def edit
    @region = Region.find(params[:id])

    render("regions/edit.html.erb")
  end

  def update
    @region = Region.find(params[:id])

    @region.region = params[:region]

    save_status = @region.save

    if save_status == true
      redirect_to("/regions/#{@region.id}", :notice => "Region updated successfully.")
    else
      render("regions/edit.html.erb")
    end
  end

  def destroy
    @region = Region.find(params[:id])

    @region.destroy

    if URI(request.referer).path == "/regions/#{@region.id}"
      redirect_to("/", :notice => "Region deleted.")
    else
      redirect_to(:back, :notice => "Region deleted.")
    end
  end
end
