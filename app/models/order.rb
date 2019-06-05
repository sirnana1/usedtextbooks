#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class Order < ApplicationRecord
#all input fields needs to be filled out
validates :address, :city, :state, presence: true
#Relational association
belongs_to :book
#Relational association, an order is made by a buyer and a buyer is a user
belongs_to :buyer, class_name: "User"
belongs_to :seller, class_name: "User"

#creating relationships
has_many :sales, class_name: "Order", foreign_key: "seller_id"
has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
end
