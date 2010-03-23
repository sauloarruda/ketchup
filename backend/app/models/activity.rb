class Activity < ActiveRecord::Base

  belongs_to :project
  belongs_to :user
  
  validates_presence_of :name
  validates_presence_of :estimate
  validates_presence_of :user
  
  # obtain the activity list for an user
  def Activity.list(user_id)
    activities = find :all, :select => "a.id, p.name as project, a.name as activity, a.estimate, " + 
        "(SELECT count(id) FROM pomodoris p WHERE p.activity_id=a.id AND p.end_date IS NOT NULL) AS actual",
        :joins => "as a LEFT JOIN projects p ON a.project_id=p.id",
        :conditions => "a.completed=false AND user_id=#{user_id}", 
        :order => "a.created_at"
    json = []
    activities.each do |a|
      row = []
      row << a.attributes["id"]
      row << (a.attributes["project"] || "")
      row << a.attributes["activity"]
      row << a.attributes["estimate"]
      row << a.attributes["actual"].to_i
      json << row
    end
    json
  end

end
