class PagesController < ApplicationController
  def home
    @review_one = Review.find_by(person: "Izzy Brown")
    @review_two = Review.find_by(person: "Angele Lenglemetz")
    @review_three = Review.find_by(person: "Alisa Ming Yi Ng")
    @review_four = Review.find_by(person: "Jess Lee")
    @review_five = Review.find_by(person: "Marcus Rapacioli")
    @review_six = Review.find_by(person: "Ben Fanning")
    @rest = [@review_one, @review_two, @review_three, @review_four, @review_five, @review_six]
    @reviews = Review.all - @rest
    @reviews = @rest + @reviews
  end
end
