class Color < ApplicationRecord
  validates :name, uniqueness: true, length: { maximum: 55 }, presence: true
  validates :description, length: { maximum: 240 }, presence: true
  validates :hex, length: { is: 6 }, presence: true
  validates :rgb, presence: true, length: { minimum: 7, maximum: 13 }
  validates :hsl, presence: true, length: { minimum: 9, maximum: 17 }
end
