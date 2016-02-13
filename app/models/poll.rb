class Poll < ActiveRecord::Base
  validates :title, presence: true

  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
end
