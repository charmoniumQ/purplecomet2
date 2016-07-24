class CreateDivisions < ActiveRecord::Migration[5.0]
  def change
    create_table :divisions do |t|

      t.string :longname, null: false
      t.string :shortname, null: false

      t.timestamps
    end
  end
end
