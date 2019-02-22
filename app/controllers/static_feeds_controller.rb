class StaticFeedsController < ApplicationController
  before_action :set_static_feed, only: [:edit, :update, :locations, :index]

  # GET /static_feeds
  # GET /static_feeds.json
  def index
  end

  # GET /static_feeds/1
  # GET /static_feeds/1.json
  def show
    redirect_to :action => 'index'
  end

  # GET /static_feeds/new
  # def new
  #   @static_feed = StaticFeed.new
  # end

  # GET /static_feeds/1/edit
  def edit
  end

  # POST /static_feeds
  # POST /static_feeds.json
  # def create
  #   @static_feed = StaticFeed.new(static_feed_params)

  #   respond_to do |format|
  #     if @static_feed.save
  #       format.html { redirect_to @static_feed, notice: 'Static feed was successfully created.' }
  #       format.json { render :show, status: :created, location: @static_feed }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @static_feed.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /static_feeds/1
  # PATCH/PUT /static_feeds/1.json
  def update
    respond_to do |format|
      if @static_feed.update(static_feed_params)
        format.html { redirect_to @static_feed, notice: 'Static feed was successfully updated.' }
        format.json { render :show, status: :ok, location: @static_feed }
      else
        format.html { render :edit }
        format.json { render json: @static_feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /static_feeds/1
  # DELETE /static_feeds/1.json
  # def destroy
  #   @static_feed.destroy
  #   respond_to do |format|
  #     format.html { redirect_to static_feeds_url, notice: 'Static feed was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  def locations
    unless @static_feed.blank?
      stuff = JSON.parse(@static_feed.static_feed)
      render json: stuff
    else
      head :ok
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_static_feed
      @static_feed = StaticFeed.first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def static_feed_params
      params.require(:static_feed).permit(:static_feed)
    end
end
