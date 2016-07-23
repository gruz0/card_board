class CreateCards < ActiveRecord::Migration[5.0]
  def up
    create_table :cards do |t|
      t.timestamps
    end

    6.times do
      Card.create!
    end
  end

  def down
    drop_table :cards
  end
end
