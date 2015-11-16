class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.integer :pnum
      t.string :email
      t.text 	:content

      t.timestamps null: false
    end
  end
end
