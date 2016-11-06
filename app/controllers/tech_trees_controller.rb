class TechTreesController < ApplicationController
  before_action :set_tech_tree, only: [:show, :edit, :update, :destroy]

  # GET /tech_trees
  # GET /tech_trees.json
  def index
    @tech_trees = TechTree.all
  end

  # GET /tech_trees/1
  # GET /tech_trees/1.json
  def show
  end

  # GET /tech_trees/new
  def new
    @tech_tree = TechTree.new
  end

  # GET /tech_trees/1/edit
  def edit
  end

  # POST /tech_trees
  # POST /tech_trees.json
  def create
    @tech_tree = TechTree.new(tech_tree_params)

    respond_to do |format|
      if @tech_tree.save
        format.html { redirect_to @tech_tree, notice: 'Tech tree was successfully created.' }
        format.json { render :show, status: :created, location: @tech_tree }
      else
        format.html { render :new }
        format.json { render json: @tech_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_trees/1
  # PATCH/PUT /tech_trees/1.json
  def update
    respond_to do |format|
      if @tech_tree.update(tech_tree_params)
        format.html { redirect_to @tech_tree, notice: 'Tech tree was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_tree }
      else
        format.html { render :edit }
        format.json { render json: @tech_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_trees/1
  # DELETE /tech_trees/1.json
  def destroy
    @tech_tree.destroy
    respond_to do |format|
      format.html { redirect_to tech_trees_url, notice: 'Tech tree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_tree
      @tech_tree = TechTree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_tree_params
      params.require(:tech_tree).permit(:master_tech_id, :master_tech)
    end
end
