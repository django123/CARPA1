class Project < ApplicationRecord
  has_many  :release_couriers
  has_many :entry_couriers
end
