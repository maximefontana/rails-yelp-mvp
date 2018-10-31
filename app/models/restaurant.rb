# frozen_string_literal: true

# eat a ficl rubocop
class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :category, presence: true
  validates :category, inclusion: {
    in: %w[chinese italian japanese french belgian]
  }
end
