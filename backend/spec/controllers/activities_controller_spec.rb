require 'spec_helper'

describe ActivitiesController do

  fixtures :users
  context "#index" do
    
    it "should render activity list json" do
      get 'index', :user_id => users(:darrudapinto).id
      response.should be_success
      response.should have_text("[[1,\"Ketchup\",\"Define Vision\",2,1]]")
    end
    
    it "should return error 500 without user_id" do
      lambda { get 'index' }.should raise_error(RuntimeError, 'param user_id is required')
    end
    
  end

end
