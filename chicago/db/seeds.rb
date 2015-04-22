# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Place.delete_all
[{:title => "Sears Tower", :photo => "http://upload.wikimedia.org/wikipedia/commons/b/ba/Sears_Tower_ss.jpg", :price => 0, :description => 'test'},
{:title => "Trump Tower", :photo => "http://upload.wikimedia.org/wikipedia/commons/9/9a/20090518_Trump_International_Hotel_and_Tower,_Chicago.jpg", :price => 0, :description => 'test'},
{:title => "Grant Park", :photo => "http://wibiti.com/images/hpmain/188/271188.jpg", :price => 0, :description => 'test'},
{:title => "The Bean", :photo => "http://images.chicagotraveler.com/sites/default/files/billboard/millenium-park_C_0.jpg", :price => 0, :description => 'test'},
{:title => "United Center", :photo => "https://cbschicago.files.wordpress.com/2010/09/united-center-feature1.jpg", :price => 0, :description => 'test'},
].each do |place_hash|
  p = Place.new
  p.title = place_hash[:title]
  p.photo = place_hash[:photo]
  p.price = place_hash[:price]
  p.description = place_hash[:description]
  p.save
end

Review.delete_all