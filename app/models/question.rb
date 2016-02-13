class Question < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :poll

  def votes_in_percents(question)
    poll = question.poll
    sum = question.poll.questions.sum(:votes)
    ((question.votes.to_f / sum.to_f) * 100).round(1)
  end
end
