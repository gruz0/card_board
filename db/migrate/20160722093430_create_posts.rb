class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :material_type, default: 'pictures'
      
      t.timestamp
    end
  end
end
