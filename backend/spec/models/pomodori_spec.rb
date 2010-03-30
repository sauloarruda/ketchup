require 'spec_helper'

describe Pomodori do
  
  fixtures :users, :activities
  before(:each) do
    @valid_attributes = {
      :activity_id => activities(:define_vision).id
    }
  end

  it "should create a new instance given valid attributes" do
    pomodori = Pomodori.create!(@valid_attributes)
  end
  
  it "should be invalid without required attributes" do
    pomodori = Pomodori.new
    pomodori.should_not be_valid
    pomodori.should have(1).errors_on(:activity)
  end
end
