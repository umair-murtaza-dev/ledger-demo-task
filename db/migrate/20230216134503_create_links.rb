class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :title
      t.string :short_url
      t.string :short_url_key, index: true, unique: true, null: false
      t.string :destination_url, null: false
      t.integer :visit_count, default: 0
      t.timestamps
    end
  end
end
