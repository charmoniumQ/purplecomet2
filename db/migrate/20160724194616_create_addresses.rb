class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      # TODO: use a better model here
      # Maybe address verification, or country infering could be done
      t.string :street, null: false
      t.string :city
      t.string :state
      t.string :country, null: false
      t.string :zip

      t.timestamps
    end
  end
end
