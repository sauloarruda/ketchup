require 'spec_helper'

describe ActivitiesController do

  fixtures :users
  context "#index" do
    
    it "should render activity list json" do
      get 'index', :user_id => users(:darrudapinto).id
      response.should be_success
      response.should have_text("[[\"Ketchup\",\"Define Vision\",2,1]]")
    end
    
  end

end
