class AgencyBranch < ApplicationRecord
belongs_to :agency, optional: :true
has_many :agency_contacts
has_many :agency_destination_cities
has_many :destination_cities, through: :agency_destination_cities
end
