class CreateFasteners < ActiveRecord::Migration[5.0]
  def change
    create_table :fasteners do |t|
      t.integer :year
      t.string :model
      t.string :location
      t.string :fastener
      t.string :specification
      t.string :citation

      t.timestamps
    end
  end
end
