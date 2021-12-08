class CreateTassks < ActiveRecord::Migration[6.1]
  def change
    create_table :tassks do |t|
      t.string :name
      t.text :description
      t.string :code
      t.date :due_date

      t.timestamps
    end
  end
end
