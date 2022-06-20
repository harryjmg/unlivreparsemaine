class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.text :episode_url
      t.integer :average_rating

      t.timestamps
    end
  end
end
