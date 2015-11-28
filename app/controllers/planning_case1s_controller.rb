class PlanningCase1sController < ApplicationController
  before_action :set_planning_case1, only: [:show, :edit, :update, :destroy]

  # GET /planning_case1s
  # GET /planning_case1s.json
  def index
    @planning_case1s = PlanningCase1.all
  end

  # GET /planning_case1s/1
  # GET /planning_case1s/1.json
  def show
  end

  # GET /planning_case1s/new
  def new
    @planning_case1 = PlanningCase1.new
  end

  # GET /planning_case1s/1/edit
  def edit
  end

  # POST /planning_case1s
  # POST /planning_case1s.json
  def create
    @planning_case1 = PlanningCase1.new(planning_case1_params)

    respond_to do |format|
      if @planning_case1.save
        format.html { redirect_to @planning_case1, notice: 'Planning case1 was successfully created.' }
        format.json { render :show, status: :created, location: @planning_case1 }
      else
        format.html { render :new }
        format.json { render json: @planning_case1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planning_case1s/1
  # PATCH/PUT /planning_case1s/1.json
  def update
    respond_to do |format|
      if @planning_case1.update(planning_case1_params)
        format.html { redirect_to @planning_case1, notice: 'Planning case1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @planning_case1 }
      else
        format.html { render :edit }
        format.json { render json: @planning_case1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planning_case1s/1
  # DELETE /planning_case1s/1.json
  def destroy
    @planning_case1.destroy
    respond_to do |format|
      format.html { redirect_to planning_case1s_url, notice: 'Planning case1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planning_case1
      @planning_case1 = PlanningCase1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planning_case1_params
      params.require(:planning_case1).permit(:user_id, :experiences, :orientation, :appropriate)
    end
end
