class CreateAgencyContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :agency_contacts do |t|
      t.string :contact_number
      t.string :contact_person
      t.references :agency_branch, foreign_key: true

      t.timestamps
    end
  end
end
