class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.string :name, null: false, index: { unique: true }
      t.text :description, null: false
      t.string :hex, null: false
      t.string :hsl, null: false
      t.string :rgb, null: false
      t.timestamps
    end
  end
end
