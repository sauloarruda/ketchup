require './config/environment.rb'
require './app/models/activity_service.rb'

describe ActivityService do
  
  before(:each) do
    @activity_service = ActivityService.new
    @user = 2
  end
  
  it "should define index method" do
    activities = @activity_service.index(@user)
    activities.should == [ 
      Activity.new([ 2, "", "Estimate new project", 3, 2 ]), 
      Activity.new([ 3, "Libres", "Implement book model", 4, 0 ]),
      Activity.new([ 7, "", "Boss Meeting", 2, 0]),
      Activity.new([ 8, "Ketchup", "Team Modeling", 2, 0 ])
    ]
  end
  
end