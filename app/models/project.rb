class Project < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :link, presence: true

  has_attached_file :image, :styles => { :normal => "600x" },
                  :default_style => :normal,
                  :default_url => 'missing_image.png'
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
