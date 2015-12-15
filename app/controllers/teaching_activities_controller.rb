class TeachingActivitiesController < ApplicationController
  before_action :set_teaching_activity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /teaching_activities
  # GET /teaching_activities.json
  def index
    @teaching_activities = TeachingActivity.all
  end

  # GET /teaching_activities/1
  # GET /teaching_activities/1.json
  def show
  end

  # GET /teaching_activities/new
  def new
    @teaching_activity = TeachingActivity.new
  end

  # GET /teaching_activities/1/edit
  def edit
  end

  # POST /teaching_activities
  # POST /teaching_activities.json
  def create
    @teaching_activity = TeachingActivity.new(teaching_activity_params)

    respond_to do |format|
      if @teaching_activity.save
        format.html { redirect_to @teaching_activity, notice: 'Teaching activity was successfully created.' }
        format.json { render :show, status: :created, location: @teaching_activity }
      else
        format.html { render :new }
        format.json { render json: @teaching_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teaching_activities/1
  # PATCH/PUT /teaching_activities/1.json
  def update
    respond_to do |format|
      if @teaching_activity.update(teaching_activity_params)
        format.html { redirect_to @teaching_activity, notice: 'Teaching activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @teaching_activity }
      else
        format.html { render :edit }
        format.json { render json: @teaching_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teaching_activities/1
  # DELETE /teaching_activities/1.json
  def destroy
    @teaching_activity.destroy
    respond_to do |format|
      format.html { redirect_to teaching_activities_url, notice: 'Teaching activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teaching_activity
      @teaching_activity = TeachingActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teaching_activity_params
      params.require(:teaching_activity).permit(:user_id, :activity1, :activity2)
    end
end
