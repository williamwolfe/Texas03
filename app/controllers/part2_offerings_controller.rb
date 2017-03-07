class Part2OfferingsController < ApplicationController
  before_action :set_part2_offering, only: [:show, :edit, :update, :destroy]

  # GET /part2_offerings
  # GET /part2_offerings.json
  def index
    @part2_offerings = Part2Offering.all
  end

  # GET /part2_offerings/1
  # GET /part2_offerings/1.json
  def show
  end

  # GET /part2_offerings/new
  def new
    @part2_offering = Part2Offering.new
  end

  # GET /part2_offerings/1/edit
  def edit
  end

  # POST /part2_offerings
  # POST /part2_offerings.json
  def create
    @part2_offering = Part2Offering.new(part2_offering_params)

    respond_to do |format|
      if @part2_offering.save
        format.html { redirect_to @part2_offering, notice: 'Part2 offering was successfully created.' }
        format.json { render :show, status: :created, location: @part2_offering }
      else
        format.html { render :new }
        format.json { render json: @part2_offering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part2_offerings/1
  # PATCH/PUT /part2_offerings/1.json
  def update
    respond_to do |format|
      if @part2_offering.update(part2_offering_params)
        format.html { redirect_to @part2_offering, notice: 'Part2 offering was successfully updated.' }
        format.json { render :show, status: :ok, location: @part2_offering }
      else
        format.html { render :edit }
        format.json { render json: @part2_offering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part2_offerings/1
  # DELETE /part2_offerings/1.json
  def destroy
    @part2_offering.destroy
    respond_to do |format|
      format.html { redirect_to part2_offerings_url, notice: 'Part2 offering was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part2_offering
      @part2_offering = Part2Offering.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part2_offering_params
      params.require(:part2_offering).permit(:title, :description, :link)
    end
end
