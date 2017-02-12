class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :ingredient1
      t.string :ingredient2
      t.string :spice1
      t.string :spice1amount
      t.string :spice2
      t.string :spice2amount

      t.timestamps
    end
  end
end
