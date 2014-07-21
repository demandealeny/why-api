class UserViewQuestion < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :user_id, uniqueness: { scope: :question_id}, presence: true

  def self.add_view(question, user)
    v = self.new
    v.question = question
    v.user = user
    v.save
  end
end
