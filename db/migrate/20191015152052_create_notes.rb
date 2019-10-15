class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :note
      t.datetime :date
      t.string :priority
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
