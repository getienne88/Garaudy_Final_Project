class Industry < ApplicationRecord
  validates :industry, presence: true, uniqueness: true
end
