class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid do |exception|
    json_response({ message: exception.message }, :not_acceptable)
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end
end
