class DestinationCity < ApplicationRecord
has_many :agency_branches, through: :agency_destination_cities
has_many :agency_destination_cities
end
