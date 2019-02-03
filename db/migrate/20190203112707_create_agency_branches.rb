class CreateAgencyBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :agency_branches do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.float :latitude
      t.string :longitude
      t.boolean :is_head_office
      t.integer :agency_id

      t.timestamps
    end
  end
end
