class CreateRoadmaps < ActiveRecord::Migration[5.0]
  def change
    create_table :roadmaps do |t|
      t.integer "week"
      t.text "title"
      t.text "content"
      t.text "goal"
      t.text "theme"
      t.text "materials"
      t.text "workDue"
      t.text "homework"
      t.text "smallGroup"
      t.text "resources"
      t.timestamps
    end
  end
end
