class Meme < ApplicationRecord
  belongs_to :user, optional:true
  mount_uploader :picture, PictureUploader
  validates :title, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }, length: {minimum: 1, maximum: 3}, allow_blank: false

  def self.random_meme
    offset = rand(Meme.count)
    Meme.offset(offset).first
  end

end
