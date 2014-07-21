class CreateUserViewQuestions < ActiveRecord::Migration
  def change
    create_table :user_view_questions do |t|
      t.references :user, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
