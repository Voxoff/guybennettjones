
# hash = {}
# url = "/Users/gbennettjones/code/guybennettjones/reviews/"
# (1..4).each do |element|
#   # element = "" if element == 1
#   file = File.read("/Users/gbennettjones/code/guybennettjones/reviews/Kitt#{element}.htm")
#   html_doc = Nokogiri::HTML(file)
#   html_doc.search('.student-content').each do |e|
#     img =  e.search('.img-md-square').to_a.first.attributes["src"].value
#     name = e.search('.feedback-content').children.first.text.strip
#     review = e.search('.feedback-content').children.search('.ml-1').text.strip
#     hash[name] = {img: img, review: review} unless review.empty?
#   end
# end

#   def image(hash,name)
#     # require 'pry' ; binding.pry

#     current = hash[name][:img]
#     "/Users/gbennettjones/code/guybennettjones/reviews/#{current[2..-1]}"
#   end
# # Now to push hash into database

# hash.keys.each do |name|
#   img = image(hash,name)
#   review = Review.create!(person: name, review: hash[name][:review])
#   File.open(img) do |f|
#     review.img_url = f
#   end
#   review.save!
# end


# require 'csv'

# CSV.foreach("../reviews.csv") do |row|
#   Review.create(person: row[1], review: row[3] )
# end

george = "
Guy created a slick custom Ruby on Rails ecommerce website to sell our cbd products complete with an admin backend to track orders. He worked closely with a designer to turn our idea into an elegant website taking £1,000 a day. This success exceeded our expectations. Guy was flexible about incorporating changes as the site developed, and we felt he showed a strong commitment to the project at all stages.


After the launch, we kept Guy on to build extra features and to be on call. He gave us understandable translations from tech jargon and was swift to explain and resolve any issues.
We’re sad to end the relationship but we’re moving to an agency in part because the site has outgrown a single developer. We wholeheartedly recommend Guy.
"
r = Review.create(person: "Dom Day & George Kruis", review: george)
File.open("app/assets/images/george.jpg") { |f| r.update(img_url: f) }

ian = "Guy’s debugging skills and grasp of the fundamentals of programming were invaluable during my time on the Flatiron bootcamp. His patience and clarity when explaining concepts to students and his willingness to go the extra mile to help people were second to none and greatly appreciated by all of the students on the course. He would be an asset to any organisation that’s lucky enough to have the chance to employ him."
r = Review.create(person: "Ian Harrison", review: ian, relation: "Student & Colleague", workplace: "Flatiron")
File.open("app/assets/images/ian.png") { |f| r.update(img_url: f) }


jack = "Guy is a fantastic developer with a wealth of knowledge. He would always happily help me debug my problems by suggesting ideas based on my requirements and his experience. If I ever had any problems, he’s is the person to go to! Definitely made me get the most out of my bootcamp experience, an absolute pleasure."
r = Review.create(person: "Jack Ling", review: jack, relation: "Student", workplace: "Flatiron")
File.open("app/assets/images/jack.jpeg"){ |f| r.update(img_url: f) }


tom = "Guy was a fantastic teacher to our cohort from Day 1. He was quick to understand each student's different approaches to coding, and always approached problems with passion and tenacity. By the end of the course he had developed into a scrum master role, and helped coordinate and mentor us through our final projects."
r = Review.create(person: "Tom Rowson", review: tom, relation: "Student", workplace: "Flatiron")
File.open("app/assets/images/tom_rowson.jpeg"){ |f| r.update(img_url: f) }
