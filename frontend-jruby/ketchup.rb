require './config/environment.rb'
require './app/controllers/activities_controller.rb'
require './app/models/activity_service.rb'

class Ketchup < JFrame
  
  def initialize
    super
    controller = ActivitiesController.new(ActivityService.new)
    
    @jpl_master = JPanel.new(BorderLayout.new)
    @jpl_master.add(controller.index, BorderLayout::CENTER)
    
    # Add components to frame
    with do |f|
      f.content_pane.add(@jpl_master, BorderLayout::CENTER) 
      f.request_focus
		  f.default_close_operation = JFrame::EXIT_ON_CLOSE
		end
	end
  
end

if $0 == __FILE__
  app = Ketchup.new.with do |c|
    c.title = "Ketchup"
    c.set_size(640, 480)
    #c.pack
    c.set_location(400, 250)
    c.visible = true
    c.resizable = false    
  end
  contentPane = app.content_pane
  # contentPane.setLayout(new BorderLayout())
end