require 'spec_helper'

describe Activity do
  
  fixtures :users, :projects, :activities, :pomodoris
  before(:each) do
    @valid_attributes = {
      :name => "Define project vision",
      :estimate => 2,
      :user => users(:darrudapinto)
    }
  end

  it "should create a new instance given valid attributes" do
    Activity.create!(@valid_attributes)
  end
  
  it "should be invalid without required attributes" do
    activity = Activity.new
    activity.valid?.should be_false
    activity.should have(1).errors_on(:name)
    activity.should have(1).errors_on(:estimate)
    activity.should have(1).errors_on(:user)
  end
  
  it "should belongs to project" do
    activity = Activity.new @valid_attributes
    activity.project = projects(:ketchup)
    activity.save!
  end

  it "should define a list method" do
    activities = Activity.list(users(:jeffmor).id)
    # [ [ :project, :activity, :estimate, :actual ] ]
    activities.should == [ 
      [ "", "Estimate new project", 3, 2 ], 
      [ "Libres", "Implement book model", 4, 0 ],
      ["", "Boss Meeting", 2, 0],
      [ "Ketchup", "Team Modeling", 2, 0 ]
    ]
  end
    
end
