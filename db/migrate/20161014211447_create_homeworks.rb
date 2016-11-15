class CreateHomeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :homeworks do |t|
      t.text "brand_strengths"
      t.text "brand_values"
      t.text "brand_interests"
      t.text "brand_personality"
      t.text "brand_achievement"
      t.text "brand_mentor"
      t.timestamps
    end
  end
end
