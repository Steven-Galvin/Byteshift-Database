class BeaconsController < ApplicationController
  before_action :set_beacon, only: [:show, :update, :destroy]

  # GET /beacons
  def index
    @beacons = Beacon.all

    render json: @beacons
  end

  # Search /beacon/search?query={params}
  def search
    query = params[:query]
    @beacon = Beacon.search(query)
    render json: @beacon
  end

  # GET /beacons/1
  def show
    render json: @beacon
  end

  # POST /beacons
  def create
    @beacon = Beacon.new(beacon_params)

    if @beacon.save
      render json: @beacon, status: :created, location: @beacon
    else
      render json: @beacon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beacons/1
  def update
    if @beacon.update(beacon_params)
      render json: @beacon
    else
      render json: @beacon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beacons/1
  def destroy
    @beacon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beacon
      @beacon = Beacon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def beacon_params
      params.require(:beacon).permit(:name, :id)
    end
end
