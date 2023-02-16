class LinksController < ApplicationController


  def index
    @links = Link.all.order('visit_count desc').first(100)
    render json: @links.to_json, status: 200
  end

  def create
    @link = Link.new(permitted_params)
    url_key = SecureRandom.hex(2)
    @link.short_url_key = url_key
    @link.short_url = base_url + url_key
    if @link.save
      render json: @link.to_json, status: :ok
    else
      render json: @link.error_messages.join(",") || 'Failed to create link', status: :unprocessable_entity
    end
  end

  private
  def permitted_params
    params.permit(:destination_url)
  end

  def base_url
    ENV['base_url'] || "localhost:7004/"
  end
end
