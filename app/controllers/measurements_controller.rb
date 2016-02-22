class MeasurementsController < ApplicationController
  before_action :set_measurement, only: [:show, :update, :destroy]

  # GET /measurements
  # GET /measurements.json
  def index
    @measurements = Measurement.all
  end

  # GET /measurements/1
  # GET /measurements/1.json
  def show
  end

  # POST /measurements
  # POST /measurements.json
  def create
    @measurement = Measurement.new(measurement_params)

    if @measurement.save
      render :show, status: :created, location: @measurement
    else
      render json: @measurement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /measurements/1
  # PATCH/PUT /measurements/1.json
  def update
    if @measurement.update(measurement_params)
      render :show, status: :ok, location: @measurement
    else
      render json: @measurement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /measurements/1
  # DELETE /measurements/1.json
  def destroy
    @measurement.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_measurement
    @measurement = Measurement.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def measurement_params
    params.require(:measurement).permit(:temperature, :sensor_id, custom_attributes: [])
  end
end