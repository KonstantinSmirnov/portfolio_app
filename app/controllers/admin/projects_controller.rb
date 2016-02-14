class Admin::ProjectsController < ApplicationAdminController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html {
          flash[:success] = "Project was successfuly added."
          redirect_to admin_projects_path
        }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(project_params)
        format.html {
          flash[:success] = "Project was updated successfuly."
          redirect_to admin_projects_path
        }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy
    respond_to do |format|
      format.html {
        flash[:success] = "Project was successfuly destroyed."
        redirect_to admin_projects_path
      }
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :link, :image)
  end

end
