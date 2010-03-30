class Pomodori < ActiveRecord::Base
  
  belongs_to :activity
  validates_presence_of :activity
  
end
