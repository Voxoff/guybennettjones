
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


require 'csv'

CSV.foreach("../reviews.csv") do |row|
  Review.create(person: row[1], review: row[3] )
end
