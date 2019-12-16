class CapabilityRequestsController < ApplicationController
  before_action :set_capability_request, only: [:show, :edit, :update, :destroy]

  # GET /capability_requests
  # GET /capability_requests.json
  def index
    @capability_requests = CapabilityRequest.all
  end

  # GET /capability_requests/1
  # GET /capability_requests/1.json
  def show
  end

  # GET /capability_requests/new
  def new
    @capability_request = CapabilityRequest.new
  end

  # GET /capability_requests/1/edit
  def edit
  end

  # POST /capability_requests
  # POST /capability_requests.json
  def create
    @capability_request = CapabilityRequest.new(capability_request_params)

    respond_to do |format|
      if @capability_request.save
        format.html { redirect_to @capability_request, notice: 'Capability request was successfully created.' }
        format.json { render :show, status: :created, location: @capability_request }
      else
        format.html { render :new }
        format.json { render json: @capability_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capability_requests/1
  # PATCH/PUT /capability_requests/1.json
  def update
    respond_to do |format|
      if @capability_request.update(capability_request_params)
        format.html { redirect_to @capability_request, notice: 'Capability request was successfully updated.' }
        format.json { render :show, status: :ok, location: @capability_request }
      else
        format.html { render :edit }
        format.json { render json: @capability_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capability_requests/1
  # DELETE /capability_requests/1.json
  def destroy
    @capability_request.destroy
    respond_to do |format|
      format.html { redirect_to capability_requests_url, notice: 'Capability request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capability_request
      @capability_request = CapabilityRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capability_request_params
      params.require(:capability_request).permit(:name, :code, :work_package_id, :complexity_id, :release_gate_id, :comments)
    end
end
