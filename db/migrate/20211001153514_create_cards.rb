class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :number
      t.string :meaning

      t.timestamps
    end
  end
end
