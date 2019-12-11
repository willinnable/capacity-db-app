class ReleaseGatesController < ApplicationController
  before_action :authorize
  before_action :set_release_gate, only: [:show, :edit, :update, :destroy]

  # GET /release_gates
  # GET /release_gates.json
  def index
    @release_gates = ReleaseGate.all
  end

  # GET /release_gates/1
  # GET /release_gates/1.json
  def show
  end

  # GET /release_gates/new
  def new
    @release_gate = ReleaseGate.new
  end

  # GET /release_gates/1/edit
  def edit
  end

  # POST /release_gates
  # POST /release_gates.json
  def create
    @release_gate = ReleaseGate.new(release_gate_params)

    respond_to do |format|
      if @release_gate.save
        format.html { redirect_to @release_gate, notice: 'Release gate was successfully created.' }
        format.json { render :show, status: :created, location: @release_gate }
      else
        format.html { render :new }
        format.json { render json: @release_gate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /release_gates/1
  # PATCH/PUT /release_gates/1.json
  def update
    respond_to do |format|
      if @release_gate.update(release_gate_params)
        format.html { redirect_to @release_gate, notice: 'Release gate was successfully updated.' }
        format.json { render :show, status: :ok, location: @release_gate }
      else
        format.html { render :edit }
        format.json { render json: @release_gate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /release_gates/1
  # DELETE /release_gates/1.json
  def destroy
    @release_gate.destroy
    respond_to do |format|
      format.html { redirect_to release_gates_url, notice: 'Release gate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release_gate
      @release_gate = ReleaseGate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def release_gate_params
      params.require(:release_gate).permit(:code, :description)
    end
end
