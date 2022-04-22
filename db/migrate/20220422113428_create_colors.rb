class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.string :name
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
