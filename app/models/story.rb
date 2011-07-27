class Story < ActiveRecord::Base
  belongs_to :project
  
  validates :title, :story_type, :description, :project_id, :presence => true
  
  attr_accessible :title, :story_type, :description, :project_id
end
