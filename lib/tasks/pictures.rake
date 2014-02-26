namespace :pictures do

	desc "rebuild picture thumbnails"
	task :buildthumbs => :environment do
		Item.all.each do |item|
  			if item.picture.present?
  				puts item.name
  				item.picture.recreate_versions!
  				item.save!
  			end
		end
	end
	
end
