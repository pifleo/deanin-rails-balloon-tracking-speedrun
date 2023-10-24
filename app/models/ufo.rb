class Ufo < ApplicationRecord
  has_many :sightings
  has_rich_text :description
  enum status: %i[Active Inactive Decommisioned]
end
