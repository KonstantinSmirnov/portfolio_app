class Project < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :link, presence: true

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
