class PropertiesController < ApplicationController
  before_action :set_location, only: [:show_location, :about_location, :do_test, :storage_units]

  # GET /locations/1
  # GET /locations/1.json
  def show_location

  end

  def about_location

  end

  def do_test
    amount = params[:amount]
    flash[:notice] = "You owe Will #{amount}"
    render action: "show_location"
  end

  def storage_units
    stuff = JSON.parse(@location.inventory_json)
    render json: stuff
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find_by(slug: params[:slug])
    end
end
