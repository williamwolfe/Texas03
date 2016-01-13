class CommunicationActivitiesController < ApplicationController
  	before_action :set_communication_activity, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
  # GET /communication_activities
  # GET /communication_activities.json
  def index
    @communication_activities = CommunicationActivity.all
  end

  # GET /communication_activities/1
  # GET /communication_activities/1.json
  def show
  end

  # GET /communication_activities/new
  def new
    @communication_activity = CommunicationActivity.new
    
    if(CommunicationActivity.find_by(user_id:current_user.id))
  		@communication_activity = CommunicationActivity.find_by(user_id:current_user.id)
  	else 
    	@communication_activity  = CommunicationActivity.new
    end
  end

  # GET /communication_activities/1/edit
  def edit
  end

  # POST /communication_activities
  # POST /communication_activities.json
  def create
    @communication_activity = CommunicationActivity.new(communication_activity_params)

    respond_to do |format|
      if @communication_activity.save
        format.html { redirect_to @communication_activity, notice: 'Communication activity was successfully created.' }
        format.json { render :show, status: :created, location: @communication_activity }
      else
        format.html { render :new }
        format.json { render json: @communication_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communication_activities/1
  # PATCH/PUT /communication_activities/1.json
  def update
    respond_to do |format|
      if @communication_activity.update(communication_activity_params)
        format.html { redirect_to @communication_activity, notice: 'Communication activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @communication_activity }
      else
        format.html { render :edit }
        format.json { render json: @communication_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communication_activities/1
  # DELETE /communication_activities/1.json
  def destroy
    @communication_activity.destroy
    respond_to do |format|
      format.html { redirect_to communication_activities_url, notice: 'Communication activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communication_activity
      @communication_activity = CommunicationActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def communication_activity_params
      params.require(:communication_activity).permit(:user_id, :mono, :slow, :high_voice, :ascending, :terse, :abrupt_speed, :high_pitch, :aloof, :abrupt, :shy, :aggressive, :helpful, :unprepared, :bored, :content, :unhappy, :careless, :passive, :caring, :imaginative, :eager, :activity3_1, :activity3_2, :activity3_3, :activity3_4, :activity3_5, :activity3_6, :activity4)
    end
end
