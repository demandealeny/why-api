class AddDefaultValueToInterestInAnswerAndQuestion < ActiveRecord::Migration
  def change
    change_column :answers, :interest, :integer, default: 0
    change_column :questions, :interest, :integer, default: 0
  end
end
