class HotelDetailsController < ApplicationController
  before_action :set_hotel_detail, only: %i[ show edit update destroy ]

  # GET /hotel_details or /hotel_details.json
  def index
    @hotel_details = HotelDetail.all
  end

  # GET /hotel_details/1 or /hotel_details/1.json
  def show
  end

  # GET /hotel_details/new
  def new
    @hotel_detail = HotelDetail.new
  end

  # GET /hotel_details/1/edit
  def edit
  end

  # POST /hotel_details or /hotel_details.json
  def create
    @hotel_detail = HotelDetail.new(hotel_detail_params)

    respond_to do |format|
      if @hotel_detail.save
        format.html { redirect_to @hotel_detail, notice: "Hotel detail was successfully created." }
        format.json { render :show, status: :created, location: @hotel_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hotel_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotel_details/1 or /hotel_details/1.json
  def update
    respond_to do |format|
      if @hotel_detail.update(hotel_detail_params)
        format.html { redirect_to @hotel_detail, notice: "Hotel detail was successfully updated." }
        format.json { render :show, status: :ok, location: @hotel_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hotel_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotel_details/1 or /hotel_details/1.json
  def destroy
    @hotel_detail.destroy
    respond_to do |format|
      format.html { redirect_to hotel_details_url, notice: "Hotel detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel_detail
      @hotel_detail = HotelDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hotel_detail_params
      params.require(:hotel_detail).permit(:hotel_name, :address, :room_type, :price, :rooms)
    end
end
