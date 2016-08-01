class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :setup_settings

  private
  def setup_settings
    @settings = Settings.last
  end
end
