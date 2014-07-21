class AddNbquestionAndNbanswerToUser < ActiveRecord::Migration
  def change
    add_column :users, :nb_question, :integer, default: 0
    add_column :users, :nb_answer, :integer, default: 0
  end
end
