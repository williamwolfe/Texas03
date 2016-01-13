class StudentEvaluationCase2sController < ApplicationController
  	before_action :set_student_evaluation_case2, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
  
  # GET /student_evaluation_case2s
  # GET /student_evaluation_case2s.json
  def index
    @student_evaluation_case2s = StudentEvaluationCase2.all
  end

  # GET /student_evaluation_case2s/1
  # GET /student_evaluation_case2s/1.json
  def show
  end

  # GET /student_evaluation_case2s/new
  def new
    # @student_evaluation_case2 = StudentEvaluationCase2.new       
    if(StudentEvaluationCase2.find_by(user_id:current_user.id))
  		@student_evaluation_case2 = StudentEvaluationCase2.find_by(user_id:current_user.id)
  	else 
    	@student_evaluation_case2 = StudentEvaluationCase2.new
    end
    
  end

  # GET /student_evaluation_case2s/1/edit
  def edit
  end

  # POST /student_evaluation_case2s
  # POST /student_evaluation_case2s.json
  def create
    @student_evaluation_case2 = StudentEvaluationCase2.new(student_evaluation_case2_params)

    respond_to do |format|
      if @student_evaluation_case2.save
        format.html { redirect_to @student_evaluation_case2, notice: 'Student evaluation case2 was successfully created.' }
        format.json { render :show, status: :created, location: @student_evaluation_case2 }
      else
        format.html { render :new }
        format.json { render json: @student_evaluation_case2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_evaluation_case2s/1
  # PATCH/PUT /student_evaluation_case2s/1.json
  def update
    respond_to do |format|
      if @student_evaluation_case2.update(student_evaluation_case2_params)
        format.html { redirect_to @student_evaluation_case2, notice: 'Student evaluation case2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_evaluation_case2 }
      else
        format.html { render :edit }
        format.json { render json: @student_evaluation_case2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_evaluation_case2s/1
  # DELETE /student_evaluation_case2s/1.json
  def destroy
    @student_evaluation_case2.destroy
    respond_to do |format|
      format.html { redirect_to student_evaluation_case2s_url, notice: 'Student evaluation case2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_evaluation_case2
      @student_evaluation_case2 = StudentEvaluationCase2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_evaluation_case2_params
      params.require(:student_evaluation_case2).permit(:user_id, :rate, :plan)
    end
end
