require './vendor/rest_client/rest_client.rb'
require './app/models/activity.rb'

class ActivityService
  
  ENDPOINT = "http://localhost:3000" # TODO put in config
 
  def index(user)
      activities = []
      json = eval(RestClient.get(ENDPOINT + "/activities?user_id=#{user}").to_s)
      json.each do |attributes|
        activities << Activity.new(attributes)
      end
      activities
  end
  
end