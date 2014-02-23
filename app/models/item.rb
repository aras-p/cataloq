def is_number?(obj)
	obj.to_s == obj.to_i.to_s
end

class Item < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	attr_accessible :bloom1, :bloom2, :color, :conditions, :height, :latin, :name, :picture, :width
	validates :name, :presence => true


	def self.search(h)
		if h.to_i == 1
			where('height < 80')
		elsif h.to_i == 2
			where('height >= 80 and height <= 120')
		elsif h.to_i == 3
			where('height > 120')
		else
			scoped
		end
	end	
end
