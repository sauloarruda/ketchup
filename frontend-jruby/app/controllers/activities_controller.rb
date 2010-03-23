require './app/views/activities/index.rb'

class ActivitiesController
  
  def initialize(activity_service)
    @activity_service = activity_service
  end

  def index
    ActivitiesViews::Index.new(@activity_service)
  end
  
end