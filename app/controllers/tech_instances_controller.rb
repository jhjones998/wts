class TechInstancesController < ApplicationController
  before_action :set_tech_instance, only: [:show, :edit, :update, :destroy, :start_research, :cancel_research, :complete_research]
  skip_before_action :require_admin, only: [:start_research, :cancel_research]


  def start_research
    @tech_instance.start_research(@current_user)
    redirect_back
  end

  def cancel_research
    @tech_instance.cancel_research(@current_user)
    redirect_back
  end

  def complete_research
    @tech_instance.complete_research
    redirect_back
  end


  # GET /tech_instances
  # GET /tech_instances.json
  def index
    @tech_instances = TechInstance.all
  end

  # GET /tech_instances/1
  # GET /tech_instances/1.json
  def show
  end

  # GET /tech_instances/new
  def new
    @tech_instance = TechInstance.new
  end

  # GET /tech_instances/1/edit
  def edit
  end

  # POST /tech_instances
  # POST /tech_instances.json
  def create
    @tech_instance = TechInstance.new(tech_instance_params)

    respond_to do |format|
      if @tech_instance.save
        format.html { redirect_to @tech_instance, notice: 'Tech instance was successfully created.' }
        format.json { render :show, status: :created, location: @tech_instance }
      else
        format.html { render :new }
        format.json { render json: @tech_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_instances/1
  # PATCH/PUT /tech_instances/1.json
  def update
    respond_to do |format|
      if @tech_instance.update(tech_instance_params)
        format.html { redirect_to @tech_instance, notice: 'Tech instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_instance }
      else
        format.html { render :edit }
        format.json { render json: @tech_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_instances/1
  # DELETE /tech_instances/1.json
  def destroy
    @tech_instance.destroy
    respond_to do |format|
      format.html { redirect_to tech_instances_url, notice: 'Tech instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_instance
      @tech_instance = TechInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_instance_params
      params.require(:tech_instance).permit(:country_id, :master_tech_id, :visible, :researching, :partial_credit)
    end
end
