require 'spec_helper'

describe PomodorisController do

  fixtures :activities
  context "#create" do
    
    it "should create new pomodori" do
      put 'create', :activity_id => activities(:implement_book_model).id, 
        :user_id => users(:jeffmor)
      response.should be_success
    end
    
  end

end
