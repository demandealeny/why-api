class Question < ActiveRecord::Base
  default_scope { includes(:answers) }
  scope :user_answers, -> (user_id) { joins(:answers).where('answers.user_id = ?', user_id) }
  scope :user_questions, -> (user_id) { where('user_id = ?', user_id) }

  include Interest

  validates :title,
            :content,
            presence: true
  validates :title, length: { in: 10..100 }
  validates :content, length: { in: 10..500 }
  validates :view,
            :interest,
            numericality: { only_integer: true }
  validates :active, inclusion: { in: [true, false] }

  belongs_to :user
  has_many :answers
  has_many :user_view_question

  searchable do
    text :title, :content
  end

end
