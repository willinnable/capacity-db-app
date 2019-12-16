class CapabilityRequestResourceReleasesController < ApplicationController
  before_action :set_capability_request_resource_release, only: [:show, :edit, :update, :destroy]

  # GET /capability_request_resource_releases
  # GET /capability_request_resource_releases.json
  def index
    @capability_request_resource_releases = CapabilityRequestResourceRelease.all
  end

  # GET /capability_request_resource_releases/1
  # GET /capability_request_resource_releases/1.json
  def show
  end

  # GET /capability_request_resource_releases/new
  def new
    @capability_request_resource_release = CapabilityRequestResourceRelease.new
  end

  # GET /capability_request_resource_releases/1/edit
  def edit
  end

  # POST /capability_request_resource_releases
  # POST /capability_request_resource_releases.json
  def create
    @capability_request_resource_release = CapabilityRequestResourceRelease.new(capability_request_resource_release_params)

    respond_to do |format|
      if @capability_request_resource_release.save
        format.html { redirect_to @capability_request_resource_release, notice: 'Capability request resource release was successfully created.' }
        format.json { render :show, status: :created, location: @capability_request_resource_release }
      else
        format.html { render :new }
        format.json { render json: @capability_request_resource_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capability_request_resource_releases/1
  # PATCH/PUT /capability_request_resource_releases/1.json
  def update
    respond_to do |format|
      if @capability_request_resource_release.update(capability_request_resource_release_params)
        format.html { redirect_to @capability_request_resource_release, notice: 'Capability request resource release was successfully updated.' }
        format.json { render :show, status: :ok, location: @capability_request_resource_release }
      else
        format.html { render :edit }
        format.json { render json: @capability_request_resource_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capability_request_resource_releases/1
  # DELETE /capability_request_resource_releases/1.json
  def destroy
    @capability_request_resource_release.destroy
    respond_to do |format|
      format.html { redirect_to capability_request_resource_releases_url, notice: 'Capability request resource release was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capability_request_resource_release
      @capability_request_resource_release = CapabilityRequestResourceRelease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capability_request_resource_release_params
      params.require(:capability_request_resource_release).permit(:capability_id, :resource_id, :release_id, :demand)
    end
end
