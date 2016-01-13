class EvaluationCreditsController < ApplicationController
  	before_action :set_evaluation_credit, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
  # GET /evaluation_credits
  # GET /evaluation_credits.json
  def index
    @evaluation_credits = EvaluationCredit.all
  end

  # GET /evaluation_credits/1
  # GET /evaluation_credits/1.json
  def show
  end

  # GET /evaluation_credits/new
  def new
    @evaluation_credit = EvaluationCredit.new
    
    if(EvaluationCredit.find_by(user_id:current_user.id))
  		@evaluation_credit = EvaluationCredit.find_by(user_id:current_user.id)
  	else 
    	@evaluation_credit = EvaluationCredit.new
    end
  end

  # GET /evaluation_credits/1/edit
  def edit
  end

  # POST /evaluation_credits
  # POST /evaluation_credits.json
  def create
    @evaluation_credit = EvaluationCredit.new(evaluation_credit_params)

    respond_to do |format|
      if @evaluation_credit.save
        format.html { redirect_to @evaluation_credit, notice: 'Evaluation credit was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation_credit }
      else
        format.html { render :new }
        format.json { render json: @evaluation_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluation_credits/1
  # PATCH/PUT /evaluation_credits/1.json
  def update
    respond_to do |format|
      if @evaluation_credit.update(evaluation_credit_params)
        format.html { redirect_to @evaluation_credit, notice: 'Evaluation credit was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation_credit }
      else
        format.html { render :edit }
        format.json { render json: @evaluation_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_credits/1
  # DELETE /evaluation_credits/1.json
  def destroy
    @evaluation_credit.destroy
    respond_to do |format|
      format.html { redirect_to evaluation_credits_url, notice: 'Evaluation credit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation_credit
      @evaluation_credit = EvaluationCredit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_credit_params
      params.require(:evaluation_credit).permit(:user_id, :list_skills_1, :rating_1, :list_skills_2, :selected_skill, :rating_2, :support)
    end
end
