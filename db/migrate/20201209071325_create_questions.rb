class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :qid
      t.string :uname
      t.datetime :posttime
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
