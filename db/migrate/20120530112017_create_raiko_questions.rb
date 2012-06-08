class CreateRaikoQuestions < ActiveRecord::Migration
  def change
    create_table :raiko_questions do |t|
      t.text :query

      t.timestamps
    end
  end
end
