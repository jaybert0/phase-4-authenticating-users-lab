class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  include ActionController::Cookies

  private

  def record_not_found
    render json: { error: "Article not found" }, status: :not_found
  end
  
end
