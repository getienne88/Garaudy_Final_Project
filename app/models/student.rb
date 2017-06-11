class Student < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :company, presence: true
  validates :function, presence: true
  validates :industry, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
