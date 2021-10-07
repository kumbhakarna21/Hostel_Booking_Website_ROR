class MasterServicesController < ApplicationController
  before_action :set_master_service, only: %i[ show edit update destroy ]

  # GET /master_services or /master_services.json
  def index
    @master_services = MasterService.all
  end

  # GET /master_services/1 or /master_services/1.json
  def show
  end

  # GET /master_services/new
  def new
    @master_service = MasterService.new
  end

  # GET /master_services/1/edit
  def edit
  end

  # POST /master_services or /master_services.json
  def create
    @master_service = MasterService.new(master_service_params)

    respond_to do |format|
      if @master_service.save
        format.html { redirect_to @master_service, notice: "Master service was successfully created." }
        format.json { render :show, status: :created, location: @master_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @master_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_services/1 or /master_services/1.json
  def update
    respond_to do |format|
      if @master_service.update(master_service_params)
        format.html { redirect_to @master_service, notice: "Master service was successfully updated." }
        format.json { render :show, status: :ok, location: @master_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @master_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_services/1 or /master_services/1.json
  def destroy
    @master_service.destroy
    respond_to do |format|
      format.html { redirect_to master_services_url, notice: "Master service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_service
      @master_service = MasterService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def master_service_params
      params.require(:master_service).permit(:service)
    end
end
