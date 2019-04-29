class PagesController < ApplicationController
  def home
    @top_reviews = Review.where(person: ['Izzy Brown','Angele Lenglemetz', 'Alisa Ming Yi Ng', 'Edward Ward'])
    @lw_reviews = @top_reviews + (Review.where(workplace: 'Le Wagon') - @top_reviews)
    @ff_reviews = Review.where(workplace: 'fourfivecbd')
    @fl_reviews = Review.where(workplace: 'Flatiron')
  end
end
