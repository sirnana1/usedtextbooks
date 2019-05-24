class Book < ApplicationRecord


  # All these fields needs to be filled out by user or error message
  validates :title, presence: true
  validates :isbn, presence: true, length:{maximum: 13}
  validates :price, numericality: true
  validates :year, presence: true, length: {maximum: 4}
  validates :description, presence: true
  validates :author, presence: true
  validates :publisher, presence: true
end
