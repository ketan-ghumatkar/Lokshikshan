class CreateMatadars < ActiveRecord::Migration
  def change
    create_table :matadars do |t|

      t.timestamps null: false
      t.string :name
      t.text :address
      t.integer :age 
    end
  end
end
