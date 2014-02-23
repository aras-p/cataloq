class Item < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	attr_accessible :bloom1, :bloom2, :color, :conditions, :height, :latin, :name, :picture, :width
	validates :name, :presence => true
end
