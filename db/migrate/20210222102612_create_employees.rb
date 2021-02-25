class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :firstName
      t.string :string
      t.string :lastName
      t.string :string
      t.string :emailId
      t.string :string

      t.timestamps
    end
  end
end
