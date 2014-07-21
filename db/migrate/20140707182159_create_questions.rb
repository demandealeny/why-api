class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :content
      t.integer :view
      t.integer :interest
      t.boolean :active

      t.timestamps
    end
  end
end
