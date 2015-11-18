class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
