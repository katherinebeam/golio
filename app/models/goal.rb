class Goal < ActiveRecord::Base
  belongs_to :user
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_file_name :picture, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
