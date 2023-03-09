class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.integer :track
      t.string :title
      t.string :duration
      t.integer :year
      t.belongs_to :album, null: false, foreign_key: true
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
