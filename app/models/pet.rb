class Pet < ApplicationRecord
  # associations
  # validations
  validates :found_on, presence: true
  validates :address, presence: true
  SPECIES = ['horse', 'lion', 'capybara', 'dog', 'eagle']
  validates :species, inclusion: { in: SPECIES }
  enum status: [:healthy, :injured, :dead]
end

# Pet::SPECIES
