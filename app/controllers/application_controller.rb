class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale
  before_filter :basic_auth
    private
    def set_locale
      I18n.locale = params[:locale] if params[:locale].present?
    end
    def default_url_option(options = {})
      {locale: I18n.locale}
    end
    def basic_auth
      if Rails.env.development?
        authenticate_or_request_with_http_basic do |id, password|
          id == ENV['BECODER_DEV_USER'] && password == ENV['BECODER_DEV_PASSWORD']
        end
      end
    end
end

