#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class AddFieldsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :buyer_id, :integer
    add_column :orders, :seller_id, :integer
  end
end
