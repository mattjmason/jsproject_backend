class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre
      t.string :published
      t.string :description
      t.belongs_to :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
