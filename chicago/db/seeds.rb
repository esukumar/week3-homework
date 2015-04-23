# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Place.delete_all
[{:title => "Sears Tower", :photo => "http://upload.wikimedia.org/wikipedia/commons/b/ba/Sears_Tower_ss.jpg", :price => 2000, :description => "The Willis Tower, built as and still commonly referred to as Sears Tower, is a 108-story, 1,451-foot (442 m) skyscraper in Chicago, Illinois, United States.[2] At completion in 1973, it surpassed the World Trade Center towers in New York to become the tallest building in the world, a title it held for nearly 25 years. The Willis Tower is the second-tallest building in the United States and the 12th-tallest in the world. More than one million people visit its observation deck each year, making it one of Chicago's most popular tourist destinations. The structure was renamed in 2009 by the Willis Group as part of its lease on a portion of the tower's space"},
{:title => "Trump Tower", :photo => "http://upload.wikimedia.org/wikipedia/commons/9/9a/20090518_Trump_International_Hotel_and_Tower,_Chicago.jpg", :price => 3000, :description => "The Trump International Hotel and Tower, also known as Trump Tower Chicago and Trump Tower, is a skyscraper condo-hotel in downtown Chicago, Illinois. The building, named after billionaire real estate developer Donald Trump, was designed by architect Adrian Smith of Skidmore, Owings and Merrill. Bovis Lend Lease built the 98-story structure, which reached a height of 1,389 feet (423 m) including its spire, its roof topping out at 1,170 feet (360 m). It is adjacent to the main branch of the Chicago River, with a view of the entry to Lake Michigan beyond a series of bridges over the river."},
{:title => "Grant Park", :photo => "http://wibiti.com/images/hpmain/188/271188.jpg", :price => 0, :description => "Grant Park is a large urban park (319 acres or 1.29 km²) in the Loop community area of Chicago. Located in Chicago's central business district, the park's most notable features are Millennium Park, Buckingham Fountain, the Art Institute of Chicago and the Museum Campus. Originally known as Lake Park, and dating from the city's founding, it was renamed in 1901 to honor Ulysses S. Grant."},
{:title => "The Bean", :photo => "http://images.chicagotraveler.com/sites/default/files/billboard/millenium-park_C_0.jpg", :price => 0, :description => "Cloud Gate is a public sculpture by Indian-born British artist Anish Kapoor, that is the centerpiece of AT&T Plaza at Millennium Park in the Loop community area of Chicago, Illinois. The sculpture and AT&T Plaza are located on top of Park Grill, between the Chase Promenade and McCormick Tribune Plaza & Ice Rink. Constructed between 2004 and 2006, the sculpture is nicknamed The Bean because of its bean-like shape."},
{:title => "United Center", :photo => "https://cbschicago.files.wordpress.com/2010/09/united-center-feature1.jpg", :price => 8000, :description => "United Center is an indoor sports arena located in Chicago, Illinois. The United Center is home to both the Chicago Bulls of the National Basketball Association (NBA) and the Chicago Blackhawks of the National Hockey League (NHL). The arena is named after its corporate sponsor, United Airlines."},
].each do |place_hash|
  p = Place.new
  p.title = place_hash[:title]
  p.photo = place_hash[:photo]
  p.price = place_hash[:price]
  p.description = place_hash[:description]
  p.save
end

Review.delete_all