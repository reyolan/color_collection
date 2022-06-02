class Color < ApplicationRecord
  validates :name, uniqueness: true, length: { maximum: 15 }, presence: true
  validates :description, length: { maximum: 145 }, presence: true
  validates :hex, length: { is: 6 }, presence: true
  validates :rgb, length: { minimum: 7, maximum: 13 }, presence: true
  validates :hsl, length: { minimum: 9, maximum: 17 }, presence: true
end
