class PropertiesController < ApplicationController
  before_action :set_location, only: [:show_location]

  # GET /locations/1
  # GET /locations/1.json
  def show_location
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find_by(slug: params[:slug])
    end
end
