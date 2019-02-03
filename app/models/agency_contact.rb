class AgencyContact < ApplicationRecord
  belongs_to :agency_branch, optional: :true
end
