class Answer < ActiveRecord::Base

  include Interest

  validates :content, presence: true
  validates :content, length: { in: 10..500 }
  validates :interest, numericality: { only_integer: true }

  belongs_to :question
  belongs_to :user
end
