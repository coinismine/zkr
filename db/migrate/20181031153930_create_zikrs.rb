class CreateZikrs < ActiveRecord::Migration[5.2]
  def change
    create_table :zikrs do |t|
      t.string :name
      t.string :city
      t.string :country
      t.decimal :phone
      t.datetime :date
      t.integer :kalma_tayyaba
      t.integer :durud_sharif
      t.integer :astagfaar

      t.timestamps
    end
  end
end
