class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @category = @project.category
  end

  def new
    @category = Category.find(params[:category_id])
    @project = Project.new
  end

  def create
    @category = Category.find(params[:category_id])
    @project = @category.projects.create!(project_params)
    redirect_to @category
  end

  def edit
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @category.projects.update(project_params)
    redirect_to @category
  end

  def destroy
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to @category
  end

  private

  def project_params
    params.require(:project).permit(:name, :image_url, :instructions)
  end

end
