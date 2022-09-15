class BeastsController < ApplicationController

  def index
    if name = params[:name]
      @beasts = Beast.search(name)
    elsif params[:page].present?
      @beasts = Beast.order('name ASC').paginate(:page => params[:page], per_page:10)
    else
      @beasts = Beast.all
    end
    json_response(@beasts)
  end

  def show 
    @beast = Beast.find(params[:id])
    json_response(@beast)
  end

  def create 
    @beast = Beast.create!(beast_params)
    json_response(@beast, :created)
  end

  def update 
    @beast = Beast.find(params[:id])
    if @beast.update(beast_params)
      render status: 200, json: {
        message: "This beast has been updated successfully!"
      }
    end
  end

  def destroy 
    @beast = Beast.find(params[:id])
    if @beast.destroy 
      render status: 200, json: {
        message: "This beast has been destroyed successfully!"
      }
    end
  end

  private
  def beast_params
    params.permit(:daemon, :breed, :name, :age, :desc, :strength, :weapon, :available)
  end
end