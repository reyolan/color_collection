class Color < ApplicationRecord
  validates :name, uniqueness: true, length: { maximum: 15 }, presence: true
  validates :description, length: { maximum: 145 }, presence: true
  validates :hex, format: { with: /\A([A-Fa-f0-9]{6})\z/ }, presence: true
  validates :rgb, format: { with: /\A(\d{1,3}), (\d{1,3}), (\d{1,3})\z/ }, presence: true
  validates :hsl, format: { with: /\A(\d{1,3}), (\d{1,3}(.\d{1})?%), (\d{1,3}(.\d{1})?%)\z/ }, presence: true
end
