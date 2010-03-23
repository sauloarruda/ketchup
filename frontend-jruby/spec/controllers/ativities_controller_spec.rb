require './config/environment.rb'
require './app/models/activity_service.rb'
require './app/controllers/activities_controller.rb'
require './app/views/activities/index.rb'

describe ActivitiesController do
  
  before(:each) do
    @activities = [["Ketchup", "Definir visão do projeto", 2, 1]]
    activity_service = mock(ActivityService)
    activity_service.stub!(:index).with(@@user).and_return(@activities)
    @controller = ActivitiesController.new(activity_service)
  end
  
  context "#index" do
    it "should render index view" do
      view = @controller.index
      view.class.should == ActivitiesViews::Index
    end
  
    it "shoould populate activities table" do
      view = @controller.index
      view.table.model.with do |m|
        m.class.should == ActivitiesViews::ActivitiesTableModel
        m.columns == ["Projeto", "Atividade", "Est.", "Real."]
        m.data.should == @activities
      end
    end
  end
  
end