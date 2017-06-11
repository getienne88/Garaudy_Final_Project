class Company < ApplicationRecord
  validates :logo, presence: true
  validates :company, presence: true, uniqueness: true
  validates :industry, presence: true
end
