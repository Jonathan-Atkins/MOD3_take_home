class CreateSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.decimal :price
      t.boolean :cancelled
      t.interval :frequency
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
