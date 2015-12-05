class PlanningCreditsController < ApplicationController
  before_action :set_planning_credit, only: [:show, :edit, :update, :destroy]

  # GET /planning_credits
  # GET /planning_credits.json
  def index
    @planning_credits = PlanningCredit.all
  end

  # GET /planning_credits/1
  # GET /planning_credits/1.json
  def show
  end

  # GET /planning_credits/new
  def new
  
  	if(PlanningCredit.find_by(user_id:current_user.id))
  		@planning_credit = PlanningCredit.find_by(user_id:current_user.id)
  	else 
    	 @planning_credit = PlanningCredit.new
    end
  
   
  end

  # GET /planning_credits/1/edit
  def edit
  end

  # POST /planning_credits
  # POST /planning_credits.json
  def create
    @planning_credit = PlanningCredit.new(planning_credit_params)

    respond_to do |format|
      if @planning_credit.save
        format.html { redirect_to @planning_credit, notice: 'Planning credit was successfully created.' }
        format.json { render :show, status: :created, location: @planning_credit }
      else
        format.html { render :new }
        format.json { render json: @planning_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planning_credits/1
  # PATCH/PUT /planning_credits/1.json
  def update
    respond_to do |format|
      if @planning_credit.update(planning_credit_params)
        format.html { redirect_to @planning_credit, notice: 'Planning credit was successfully updated.' }
        format.json { render :show, status: :ok, location: @planning_credit }
      else
        format.html { render :edit }
        format.json { render json: @planning_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planning_credits/1
  # DELETE /planning_credits/1.json
  def destroy
    @planning_credit.destroy
    respond_to do |format|
      format.html { redirect_to planning_credits_url, notice: 'Planning credit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planning_credit
      @planning_credit = PlanningCredit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planning_credit_params
      params.require(:planning_credit).permit(:user_id, :acute, :IP, :private, :corporate, :nonprofit, :pediatric, :school, :SNU, :SNF, :LTC, :other, :list)
    end
end
