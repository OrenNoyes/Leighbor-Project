class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :jobtype
      t.date :jobday
      t.string :location
      t.integer :price
      t.boolean :is_done

      t.timestamps
    end
  end
end
