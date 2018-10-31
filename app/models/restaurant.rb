# frozen_string_literal: true

# eat a dick rubocop
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: {
    in: %w[chinese italian japanese french belgian]
  }
end
