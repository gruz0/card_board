class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :title_color
      t.string :title_name
      t.string :background_color

      t.timestamps
    end

    Settings.create
  end
end
