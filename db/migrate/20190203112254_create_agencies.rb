class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :website
      t.string :cover_image

      t.timestamps
    end
  end
end
