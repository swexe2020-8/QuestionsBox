class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :name
      t.text :body
      t.references :qtitle, foreign_key: true

      t.timestamps
    end
  end
end
