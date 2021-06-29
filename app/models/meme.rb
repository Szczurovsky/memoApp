class Meme < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :title, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }, length: {minimum: 1, maximum: 3}, allow_blank: false
end
