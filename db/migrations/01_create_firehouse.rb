class CreateFirehouses < ActiveRecord::Migration
  def change
    create_table :firehouses do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
    end
  end
end