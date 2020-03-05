class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.datetime :time
      t.string :store

      t.timestamps
    end
  end
end
