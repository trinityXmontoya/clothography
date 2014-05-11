class SearchesController < ApplicationController

  def index

  end

  def create
    session[:search_results] = Search.find_results(params[:search_terms])
    redirect_to listings_path
    # respond_to do |format|
    #   format.html {}
    #   format.js {}
    # end
  end

  private
  def search_params
    params.require(:search).permit(:search_terms)
  end

end
