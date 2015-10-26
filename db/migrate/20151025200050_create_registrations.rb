class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :gender
      t.integer :phonenumber
      t.string :city
      t.string :password
      t.string :role

      t.timestamps null: false
    end
  end
end
