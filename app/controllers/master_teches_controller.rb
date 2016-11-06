class MasterTechesController < ApplicationController
  before_action :set_master_tech, only: [:show, :edit, :update, :destroy]

  # GET /master_teches
  # GET /master_teches.json
  def index
    @master_teches = MasterTech.all
  end

  # GET /master_teches/1
  # GET /master_teches/1.json
  def show
  end

  # GET /master_teches/new
  def new
    @master_tech = MasterTech.new
  end

  # GET /master_teches/1/edit
  def edit
  end

  # POST /master_teches
  # POST /master_teches.json
  def create
    @master_tech = MasterTech.new(master_tech_params)

    respond_to do |format|
      if @master_tech.save
        format.html { redirect_to @master_tech, notice: 'Master tech was successfully created.' }
        format.json { render :show, status: :created, location: @master_tech }
      else
        format.html { render :new }
        format.json { render json: @master_tech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_teches/1
  # PATCH/PUT /master_teches/1.json
  def update
    respond_to do |format|
      if @master_tech.update(master_tech_params)
        format.html { redirect_to @master_tech, notice: 'Master tech was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_tech }
      else
        format.html { render :edit }
        format.json { render json: @master_tech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_teches/1
  # DELETE /master_teches/1.json
  def destroy
    @master_tech.destroy
    respond_to do |format|
      format.html { redirect_to master_teches_url, notice: 'Master tech was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_tech
      @master_tech = MasterTech.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_tech_params
      params.require(:master_tech).permit(:wts_id, :level, :name, :desc, :unresearched_desc, :initially_visible)
    end
end
