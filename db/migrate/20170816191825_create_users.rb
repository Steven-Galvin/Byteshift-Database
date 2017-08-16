class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :id
      t.string :email

      t.timestamps
    end
  end
end