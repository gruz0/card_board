class PostBelongsToCard < ActiveRecord::Migration[5.0]
  def change
    change_table :posts do |t|
      t.belongs_to :card, index: true
    end
  end
end
