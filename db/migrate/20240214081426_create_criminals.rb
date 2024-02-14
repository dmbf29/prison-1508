class CreateCriminals < ActiveRecord::Migration[7.1]
  def change
    create_table :criminals do |t|
      t.string :name
      t.string :image_url
      t.references :prison, null: false, foreign_key: true

      t.timestamps
    end
  end
end
