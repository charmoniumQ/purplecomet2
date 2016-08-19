class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|

      t.string :name, null: false
      t.belongs_to :address, null: false
      #t.string :phone # TODO: use a better datatype here
      #t.string :email # TODO: email validation here

      t.timestamps
    end
  end
end
