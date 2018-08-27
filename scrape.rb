# require 'open-uri'
# require 'nokogiri'
# require 'mechanize'

# agent = Mechanize.new

# agent.auth(username, password)
# agent.get("https://kitt.lewagon.com/users/auth/github?type=teacher")
# base_url = "https://kitt.lewagon.com/teachers/Voxoff/feedbacks"

# html_file = open(base_url).read

# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.feedback-content .ml-1') do |element|
#   puts element.text.strip
# end
hash = {}

(1..6).each do |element|
  element = "" if element == 1
  file = File.read("../../lewagon/reviews/Kitt#{element}.html")
  html_doc = Nokogiri::HTML(file)
  html_doc.search('.student-content').each do |e|
    img =  e.search('.img-md-square').to_a.first.attributes["src"].value
    name = e.search('.feedback-content').children.first.text.strip
    review = e.search('.feedback-content').children.search('.ml-1').text.strip
    hash[name] = {img: img, review: review} unless review.empty?
  end
end
puts hash

# Now to push hash into database

hash.keys.each do |name|
  Review.create!(person: name, review: hash[name][:review], img_url: hash[name][:img])
end
