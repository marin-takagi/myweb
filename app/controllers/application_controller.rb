class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :set_request_variant

  private
    def set_request_variant
      request.variant = :smartphone
    end
end
