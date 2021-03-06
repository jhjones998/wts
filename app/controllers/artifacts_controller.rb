class ArtifactsController < ApplicationController
  before_action :set_artifact, only: [:show, :edit, :update, :destroy, :combinedowngrade]
  skip_before_action :require_admin, only: [:combinedowngrade]

  # GET /artifacts
  # GET /artifacts.json
  def index
    @artifacts = Artifact.all
  end

  # GET /artifacts/1
  # GET /artifacts/1.json
  def show
  end

  # GET /artifacts/new
  def new
    @artifact = Artifact.new
  end

  # GET /artifacts/1/edit
  def edit
  end

  # POST /artifacts
  # POST /artifacts.json
  def create
    @artifact = Artifact.new(artifact_params)

    respond_to do |format|
      if @artifact.save
        format.html { redirect_to @artifact, notice: 'Artifact was successfully created.' }
        format.json { render :show, status: :created, location: @artifact }
      else
        format.html { render :new }
        format.json { render json: @artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artifacts/1
  # PATCH/PUT /artifacts/1.json
  def update
    respond_to do |format|
      if @artifact.update(artifact_params)
        format.html { redirect_to @artifact, notice: 'Artifact was successfully updated.' }
        format.json { render :show, status: :ok, location: @artifact }
      else
        format.html { render :edit }
        format.json { render json: @artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artifacts/1
  # DELETE /artifacts/1.json
  def destroy
    @artifact.destroy
    respond_to do |format|
      format.html { redirect_to artifacts_url, notice: 'Artifact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def combinedowngrade
    i = params[:commit].to_i
    if (i>0)
      @artifact.combine(i)
    else
      @artifact.downgrade(-1*i)
    end
    redirect_to root_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_artifact
    @artifact = Artifact.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def artifact_params
    params.require(:artifact).permit(:country_id, :l1, :l2, :l3, :l4, :l5, :l6)
  end
end
