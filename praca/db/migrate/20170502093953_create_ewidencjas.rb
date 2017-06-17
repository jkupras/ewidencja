class CreateEwidencjas < ActiveRecord::Migration[5.0]
  def change
    create_table :ewidencjas do |t|
      t.date :data
      t.string :nr
      t.decimal :przychod
      t.decimal :wydatki
      t.text :uwagi

      t.timestamps
    end
  end
end
