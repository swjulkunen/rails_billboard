class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.integer :ranking
      t.belongs_to :top, null: false, foreign_key: true

      t.timestamps
    end
  end
end
