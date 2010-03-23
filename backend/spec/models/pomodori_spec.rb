require 'spec_helper'

describe Pomodori do
  before(:each) do
    @valid_attributes = {
    }
  end

  it "should create a new instance given valid attributes" do
    proc {
      pomodori = Pomodori.create!(@valid_attributes)
      pomodori.should be_valid
    }.should change(Pomodori, :count).by(1)
  end
end
