class Content < ActiveRecord::Base
  validates :header, presence: true
  validates :text, presence: true
end
