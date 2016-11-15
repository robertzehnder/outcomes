class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string "title"
      t.string "link_type"
      t.text "address"
      t.integer "roadmap_id"
      t.timestamps
    end
  end
end
