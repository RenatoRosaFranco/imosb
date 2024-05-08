class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :cover_image
      t.string :name
      t.decimal :amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
