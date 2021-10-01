class RoomDetailsController < ApplicationController
  before_action :set_room_detail, only: %i[ show edit update destroy details]

  # GET /room_details or /room_details.json
  def index
    @room_details = RoomDetail.all
  end

  # GET /room_details/1 or /room_details/1.json
  def show
    @hotel_details = @room_detail.hotel_detail
  end

  # GET /room_details/new
  def new
    hotelid = params[:format].to_i
    @room_detail = RoomDetail.new(hotel_detail_id: hotelid)
  end

  def services
    
    respond_to do |format|
      format.html
      format.js
    end
  end

  def details
    
  end

  # GET /room_details/1/edit
  def edit
  end

  # POST /room_details or /room_details.json
  def create

    @room_detail = RoomDetail.new(room_detail_params)

    respond_to do |format|
      if @room_detail.save
        format.html { redirect_to @room_detail, notice: "Room detail was successfully created." }
        format.json { render :show, status: :created, location: @room_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_details/1 or /room_details/1.json
  def update
    respond_to do |format|
      if @room_detail.update(room_detail_params)
        format.html { redirect_to @room_detail, notice: "Room detail was successfully updated." }
        format.json { render :show, status: :ok, location: @room_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_details/1 or /room_details/1.json
  def destroy
    @room_detail.destroy
    respond_to do |format|
      format.html { redirect_to hotel_details_url, notice: "Room detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_detail
      @room_detail = RoomDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_detail_params
      params.require(:room_detail).permit(:hotel_detail_id, :room_type, :price_per, :bed_type, :room_size, :room_view, services: [], images: [])
    end
end
