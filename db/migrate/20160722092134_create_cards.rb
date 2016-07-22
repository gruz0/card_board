class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.timestamps
    end

    6.times do
      Card.create!
    end
  end
end
