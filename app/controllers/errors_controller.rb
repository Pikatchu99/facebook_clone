class ErrorsController < ApplicationController
  # def not_found
  #     render 'errors/404', status: 404
  # end
  
  # def unacceptable
  #     render 'errors/422', status: 422
  # end
  
  # def server_errors
  #     render 'errors/500', status: 500
  # end
  def show
    status_code = params[:code] || 500
    flash.alert = "Status #{status_code}"
    render status_code.to_s, status: status_code
  end
end
