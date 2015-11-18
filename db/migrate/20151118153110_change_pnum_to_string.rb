class ChangePnumToString < ActiveRecord::Migration
  def change
  	change_column(:users, :pnum, :string)
  end
end
