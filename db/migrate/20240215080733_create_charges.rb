class CreateCharges < ActiveRecord::Migration[7.1]
  def change
    create_table :charges do |t|
      t.date :date
      t.references :crime, null: false, foreign_key: true
      t.references :criminal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
