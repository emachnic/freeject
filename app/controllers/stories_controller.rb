class StoriesController < ApplicationController
  respond_to :html
  before_filter :find_project
  def new
    @story = @project.stories.build
  end
  
  def create
    @story = @project.stories.build(params[:story])
    if @story.save
      flash[:notice] = "Successfully added story to project."
      redirect_to project_path(@project)
    else
      render action: 'new'
    end
  end
  
  protected
  
    def find_project
      @project = Project.find(params[:project_id])
    end
end
