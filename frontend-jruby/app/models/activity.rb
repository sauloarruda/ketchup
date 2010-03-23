class Activity
  
  attr_reader :id, :project, :activity, :estimate, :actual, :attributes
  
  # attributes format: [ :id, :project, :activity, :estimate, :actual ]
  def initialize(attributes)
    @id = attributes[0]
    @project = attributes[1]
    @activity = attributes[2]
    @estimate = attributes[3]
    @activity = attributes[4]
    @attributes = attributes
  end
  
  # TODO find a better way for this
  def ==(other)
    other.attributes == @attributes
  end
  
  def [](col)
    @attributes[col]
  end
  
end