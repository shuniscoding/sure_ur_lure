class Catch < ApplicationRecord
  belongs_to :user
  belongs_to :lure
  belongs_to :location
  belongs_to :weather
end
