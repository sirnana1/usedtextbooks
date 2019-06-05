#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class AddBookIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :book_id, :integer
  end
end
