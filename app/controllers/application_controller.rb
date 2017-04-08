class ApplicationController < ActionController::Base
  before_action :set_request_variant
  protect_from_forgery with: :exception
  include SessionsHelper

  private
    def set_request_variant
      case request.user_agent
      when /iPad/
        request.variant = :phone
      when /iPhone/
        request.variant = :phone
      when /Android/
        request.variant = :phone
      end
  end
end
