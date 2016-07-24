class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|

      t.string :name, null: false
      t.belongs_to :school, null: false
      t.belongs_to :event, null: false
      t.belongs_to :division, null: false # each division starts its own ranking
      t.belongs_to :supervisor, null: false, inverse_of: :teams
      t.belongs_to :submission
      t.datetime :starttime
      t.integer :correct_count
      t.integer :rank
      t.integer :male_count
      t.integer :female_count

      t.timestamps
    end

    add_index :teams, :division
    add_index :teams, :supervisor

  end
end
