class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|

      t.integer :question_number, null: false
      t.integer :answer
      t.belongs_to :submission, null: false

      t.timestamps
    end

    add_index :answers, :submission
  end
end
