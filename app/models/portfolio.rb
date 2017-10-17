class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Scopes to call specific subtitles/topics/etc
  # def self.angular
  #   where(subtitle: "Angular")
  # end

  # scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }
end
