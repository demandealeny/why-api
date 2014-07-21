class AddUserToQuestionAndAnswer < ActiveRecord::Migration
  def change
    add_column  :answers, :user_id, :integer, index: true
    add_index   :answers, :user_id
    add_column  :questions, :user_id, :integer, index: true
    add_index   :questions, :user_id
  end
end
