class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :goals
  has_attached_file :picture, :styles => { :medium => "150x150>", :thumb => "20x20>" }
  validates_attachment_file_name :picture, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
