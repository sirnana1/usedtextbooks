class Order < ApplicationRecord
validates :address, :city, :state, presence: true
belongs_to :book
belongs_to :buyer, class_name: "User"
belongs_to :seller, class_name: "User"
has_many :listings, dependent: :destroy
has_many :sales, class_name: "Order", foreign_key: "seller_id"
has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
end
