class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
