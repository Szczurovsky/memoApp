class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :memes
  # has_many :score
  has_many :challenges
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  # before_validation :best_result

  def self.best_result(user, sizer)
    Challenge.joins(:user).where(user_id: user).where(size: sizer).where.not(time: nil).all.order("time ASC")
  end

end
