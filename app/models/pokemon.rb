class Pokemon < ApplicationRecord
  has_many :pokeballs, dependent: :destroy
  has_many :trainers, through: :pokeballs
  has_one_attached :photo

  validates :name, presence: true
  validates :element_type, presence: true, inclusion: { in: %w[normal fire water grass electric ice fighting poison ground flying psychic bug rock ghost dragon dark steel fairy] }
end
