require 'carrierwave/orm/activerecord'

class Review < ApplicationRecord

  mount_uploader :img_url, ImageUploader

  def image
    "/Users/gbennettjones/code/guybennettjones/reviews/#{self.img_url[2..-1]}"
  end
end
