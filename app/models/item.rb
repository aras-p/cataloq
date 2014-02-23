def is_number?(obj)
	obj.to_s == obj.to_i.to_s
end

class Item < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	attr_accessible :bloom1, :bloom2, :color, :conditions, :height, :latin, :name, :picture, :width
	validates :name, :presence => true


	def self.search(h, b)
		filter = ""

		if h == 1
			filter = 'height < 80'
		elsif h == 2
			filter = 'height >= 80 and height <= 120'
		elsif h == 3
			filter = 'height > 120'
		end

		if (b >= 1 and b <= 12)
			filter << " and " if !filter.empty?
			filter << "#{b}>=bloom1 and #{b}<=bloom2"
		end

		if filter
			where(filter)
		else
			scoped
		end
	end	
end
