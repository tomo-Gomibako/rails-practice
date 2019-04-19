class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :title
      t.text :description
      t.string :medium
      t.string :url_large
      t.string :url_medium
      t.string :url_small

      t.timestamps
    end
  end
end
