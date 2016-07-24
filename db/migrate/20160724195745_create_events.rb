class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|

      t.string :longtitle, null: false
      t.string :shorttitle, null: false
      t.datetime :startdatetime, null: false
      t.datetime :enddatetime, null: false
      # TODO: state which divisions are participating in this event
      # event has many divisions through allowed_divisions

      t.timestamps
    end
  end
end
