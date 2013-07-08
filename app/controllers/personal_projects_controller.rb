class PersonalProjectsController < ApplicationController
  # GET /personal_projects
  # GET /personal_projects.json
  def index
    @personal_projects = PersonalProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_projects }
    end
  end

  # GET /personal_projects/1
  # GET /personal_projects/1.json
  def show
    @personal_project = PersonalProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_project }
    end
  end

  # GET /personal_projects/new
  # GET /personal_projects/new.json
  def new
    @personal_project = PersonalProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_project }
    end
  end

  # GET /personal_projects/1/edit
  def edit
    @personal_project = PersonalProject.find(params[:id])
  end

  # POST /personal_projects
  # POST /personal_projects.json
  def create
    @personal_project = PersonalProject.new(params[:personal_project])

    respond_to do |format|
      if @personal_project.save
        format.html { redirect_to @personal_project, notice: 'Personal project was successfully created.' }
        format.json { render json: @personal_project, status: :created, location: @personal_project }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_projects/1
  # PUT /personal_projects/1.json
  def update
    @personal_project = PersonalProject.find(params[:id])

    respond_to do |format|
      if @personal_project.update_attributes(params[:personal_project])
        format.html { redirect_to @personal_project, notice: 'Personal project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_projects/1
  # DELETE /personal_projects/1.json
  def destroy
    @personal_project = PersonalProject.find(params[:id])
    @personal_project.destroy

    respond_to do |format|
      format.html { redirect_to personal_projects_url }
      format.json { head :no_content }
    end
  end
end
