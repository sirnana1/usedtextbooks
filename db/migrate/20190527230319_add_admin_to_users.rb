#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class AddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean, default: false
  end
end
