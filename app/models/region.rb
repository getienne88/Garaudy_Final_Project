class Region < ApplicationRecord
  validates :region, presence: true, uniqueness: true
end
