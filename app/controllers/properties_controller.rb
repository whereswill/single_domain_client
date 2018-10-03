class PropertiesController < ApplicationController
  before_action :set_location, only: [:show_location, :about_location, :features_location, :do_test, :storage_units]

  # GET /locations/1
  # GET /locations/1.json
  def show_location

  end

  def about_location

  end

  def features_location

  end

  def do_test
    amount = params[:amount]
    flash[:notice] = "Thank you for submitting the word #{amount}"
    render action: "show_location"
  end

  def storage_units
    unless @location.inventory_json.blank?
      stuff = JSON.parse(@location.inventory_json)
      render json: stuff
    else
      head :ok
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find_by(slug: params[:slug])
    end
end
