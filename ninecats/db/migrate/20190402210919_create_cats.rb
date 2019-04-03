class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.date :birth_date, null: false
      t.string :color, null: false
      t.string :name, null: false
      t.string :sex, inclusion: { in: %w(M F), message: "not a valid sex" }, limit: 1
      t.text :description
      t.timestamps
    end
  end
end
