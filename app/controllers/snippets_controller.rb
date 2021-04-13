class SnippetsController < ApplicationController
  before_action :set_snippet, only: [:update]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
    @snippet.client_snippet = params[:client_snippet]
    if @snippet.save
        flash[:notice] = 'Snippet was successfully created.'
        redirect_to root_url
      else
        format.html { render :new }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snippet
      @snippet = Snippet.first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snippet_params
      params.require(:snippet).permit(:client_snippet)
    end
end
