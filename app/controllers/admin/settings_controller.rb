class Admin::SettingsController < Admin::BaseController
  before_action :set_settings, only: [:edit, :update]

  def edit
  end

  def update
    respond_to do |format|
      if @settings.update(settings_params)
        format.html { redirect_to edit_admin_setting_path(@settings), notice: 'Настройки успешно обновлены!' }
      else
        format.html { render :edit }
      end
    end
  end

  private
  def set_settings
    @settings = Settings.last
  end

  def settings_params
    params.require(:settings).permit(:title_color,
                                     :title_name,
                                     :background_color)
  end
end
