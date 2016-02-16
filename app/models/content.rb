class Content < ActiveRecord::Base
  validates :logo_text, presence: true
  validates :logo_icon, presence: true
  validates :header, presence: true
  validates :text, presence: true
end
