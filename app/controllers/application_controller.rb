class ApplicationController < ActionController::Base
  before_action :get_client_snippet

  def get_client_snippet
    @client_snippet = Snippet.first.client_snippet
  end

end
