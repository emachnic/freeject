class ProjectsController < ApplicationController
  expose(:projects) { Project.all }
  expose(:project)
  respond_to :html, :json

  def index
    respond_with projects
  end

  def show
    respond_with project
  end

  def new
    respond_with project
  end

  def edit
    respond_with project
  end

  def create
    if project.save
      flash[:notice] = "Project was successfully created."
      respond_with project
    else
      render :new
    end
  end

  def update
    if project.update_attributes(params[:project])
      flash[:notice] = "Project was successfully updated."
      respond_with project
    else
      render :edit
    end
  end

  def destroy
    project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :ok }
    end
  end
end
