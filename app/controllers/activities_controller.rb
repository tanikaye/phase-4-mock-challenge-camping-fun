class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:destroy]


  def index
    activities = Activity.all
    render json: activities, status: :ok
  end

  def destroy
    @activity.destroy
    head :no_content
  end

  private

  def activity_params
    params.permit(:name, :age)
  end

  def find_activity
    @activity = Activity.find(params[:id])
  end

end
