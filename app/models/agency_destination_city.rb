class AgencyDestinationCity < ApplicationRecord
  belongs_to :agency_branch, optional: :true
  belongs_to :destination_city, optional: :true
end
