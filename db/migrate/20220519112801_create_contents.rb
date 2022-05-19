class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.text :page
      t.text :title
      t.text :content
      t.text :cta

      t.timestamps
    end
  end
end
