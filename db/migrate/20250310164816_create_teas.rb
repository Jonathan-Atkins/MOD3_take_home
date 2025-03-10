class CreateTeas < ActiveRecord::Migration[7.1]
  def change
    create_table :teas do |t|
      t.string :title
      t.text :description
      t.float :temperature
      t.interval :brew_time

      t.timestamps
    end
  end
end
