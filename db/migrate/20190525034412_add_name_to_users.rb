#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
  end
end
