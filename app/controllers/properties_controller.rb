class PropertiesController < ApplicationController
  before_action :set_location, only: [:show_location, :about_location, :gallery_location, :features_location, :do_test, :storage_units]

  # GET /locations/1
  # GET /locations/1.json
  def show_location

  end

  def about_location

  end

  def gallery_location

  end

  def features_location

  end

  def do_test
    amount = params[:amount]
    flash[:notice] = "Thank you for submitting the word #{amount}"
    render action: "show_location"
  end

  def storage_units
    unless @location.nil? || @location.inventory_json.blank?
      stuff = JSON.parse(@location.inventory_json)
      render json: stuff
    else
      respond_to do |format|
        format.html { render :file => "#{Rails.root}/public/location_404", :layout => false, :status => :not_found }
      end
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find_by(slug: params[:slug])
    end
end
