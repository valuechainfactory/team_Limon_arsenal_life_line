# frozen_string_literal: true

# rubocop: disable Style/Documentation

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name national_doctor_id hospital_name])
  end
end
# rubocop: enable Style/Documentation
