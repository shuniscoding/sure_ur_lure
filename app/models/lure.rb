class Lure < ApplicationRecord
  has_many :catches, :colors, :weights, :locations, :weathers
  has_many :users, :through => :catches
end
