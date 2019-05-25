class Book < ApplicationRecord
belongs_to :user

  # All these fields needs to be filled out by user or error message
  validates :title, presence: true
  validates :isbn, presence: true, length:{maximum: 13}
  validates :price, numericality: true
  validates :year, presence: true, length: {maximum: 4}
  validates :description, presence: true
  validates :author, presence: true
  validates :publisher, presence: true
  has_attached_file :book_img, :styles => { :book_index => "250x350>", :book_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :book_img, :content_type => /\Aimage\/.*\Z/
end
