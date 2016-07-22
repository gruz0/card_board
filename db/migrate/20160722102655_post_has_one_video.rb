class PostHasOneVideo < ActiveRecord::Migration[5.0]
  def change
    change_table :videos do |t|
      t.belongs_to :post, index: true
    end
  end
end
