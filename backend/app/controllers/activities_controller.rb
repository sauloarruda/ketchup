class ActivitiesController < ApplicationController
  
  def index
    @activities = Activity.list(params[:user_id])
    respond_to do |format|
      format.text { render :json => @activities.to_json }
    end
  end
  
end
