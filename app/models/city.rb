class City < ApplicationRecord
  validates :city, presence: true, uniqueness: true
end
