class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :occupation
      t.boolean :heterosexual
      t.string :age_range_pref
      t.integer :zipcode
      t.text :hobbies

      t.timestamps null: false
    end
  end
end
