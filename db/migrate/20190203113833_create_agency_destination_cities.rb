class CreateAgencyDestinationCities < ActiveRecord::Migration[5.2]
  def change
    create_table :agency_destination_cities do |t|
      t.references :agency_branch, foreign_key: true
      t.references :destination_city, foreign_key: true

      t.timestamps
    end
  end
end
