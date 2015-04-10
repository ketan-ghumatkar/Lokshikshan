class CreateMatadars < ActiveRecord::Migration
  def change
    create_table :matadars do |t|

      t.timestamps null: false
      t.string :name
      t.string :age
      t.string :list_index
      t.string :phone_number 
      t.string :page_number
    end
    
    add_index :matadars, [:name, :list_index, :page_number]
  end

end
