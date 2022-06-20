class AddBookAuthorToEpisodes < ActiveRecord::Migration[7.0]
  def change
    add_column :episodes, :book_author, :string
  end
end
