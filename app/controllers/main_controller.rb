class MainController < ApplicationController


  def index
    @link = Link.where(short_url_key: params[:id]).first
    if @link.present?
      @link.update_attributes(visit_count: @link.visit_count.to_i + 1)
      redirect_to @link.destination_url
    else
      render json: 'not_found', status: 404
    end
  end
end
