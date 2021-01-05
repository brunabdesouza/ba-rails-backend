class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.text :name
      t.string :row
      t.string :column

      t.timestamps
    end
  end
end
