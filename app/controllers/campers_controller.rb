class CampersController < ApplicationController
  before_action :find_camper, only: [:show]

  def index
    campers = Camper.all
    render json: campers, status: :ok
  end

  def show
    render json: @camper, status: :ok
  end

  def create
    camper = Camper.create!(camper_params)
    render json: camper, status: :created
  end

  private

  def camper_params
    params.permit(:name, :age)
  end

  def find_camper
    @camper = Camper.find(params[:id])
  end
end
