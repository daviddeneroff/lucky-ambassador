class Question < ActiveRecord::Base
  belongs_to :author, class_name: 'User'
  has_many :votes, as: :votable
  has_many :voters, through: :votes, source: :user
  has_many :answers
  has_many :comments, as: :commentable
  validates :user_id, :url, :title, presence: true
  validates :url, presence: true
  validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }

  def reset_all_answers
    answers.update_all(accepted: false)
  end

  def best
    answers.find_by(accepted: true)
  end

  def elapsed
    Time.now - created_at
  end

  def q_net
    self.votes.where(value: 1).count - self.votes.where(value: -1).count
  end

end
