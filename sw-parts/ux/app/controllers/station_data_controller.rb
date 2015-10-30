class StationDataController < ApplicationController
  before_action :set_station_datum, only: [:show, :edit, :update, :destroy]

  # GET /station_data
  # GET /station_data.json
  def index
    @station_data = StationDatum.all
  end

  # GET /station_data/1
  # GET /station_data/1.json
  def show
  end

  # GET /station_data/new
  def new
    @station_datum = StationDatum.new
  end

  # GET /station_data/1/edit
  def edit
  end

  # POST /station_data
  # POST /station_data.json
  def create
    @station_datum = StationDatum.new(station_datum_params)

    respond_to do |format|
      if @station_datum.save
        format.html { redirect_to @station_datum, notice: 'Station datum was successfully created.' }
        format.json { render :show, status: :created, location: @station_datum }
      else
        format.html { render :new }
        format.json { render json: @station_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /station_data/1
  # PATCH/PUT /station_data/1.json
  def update
    respond_to do |format|
      if @station_datum.update(station_datum_params)
        format.html { redirect_to @station_datum, notice: 'Station datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @station_datum }
      else
        format.html { render :edit }
        format.json { render json: @station_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /station_data/1
  # DELETE /station_data/1.json
  def destroy
    @station_datum.destroy
    respond_to do |format|
      format.html { redirect_to station_data_url, notice: 'Station datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station_datum
      @station_datum = StationDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def station_datum_params
      params.require(:station_datum).permit(:aqi, :co, :co_24h, :no2, :no2_24h, :o3, :o3_24h, :o3_8h, :o3_8h_24h, :pm10, :pm10_24h, :pm2_5, :pm2_5_24h, :primary_pollutant, :quality, :so2, :so2_24h, :time_point, :station_id)
    end
end
