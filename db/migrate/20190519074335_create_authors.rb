class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :First_name
      t.string :Last_name

      t.timestamps
    end
  end
end
