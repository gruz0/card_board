class AddPreviewToPosts < ActiveRecord::Migration[5.0]
  def up
    add_attachment :posts, :preview
  end

  def down
    remove_attachment :posts, :preview
  end
end
