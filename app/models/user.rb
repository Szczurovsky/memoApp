class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :memes
  # has_many :score
  has_many :challenges
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  # before_validation :best_result

  def self.best_result(sizer)
    # Challenge.joins(:user).where(user_id: user).where(size: sizer).where.not(time: nil).all.order("time ASC")
    # Challenge.joins(:user).group(:user_id).where(size: sizer).where.not(time: nil).order("time")
     # Challenge.joins(:user).where(size: sizer).where.not(time: nil).order("time")
     Challenge.joins(:user).select("Min(time),user_id,size,number,time").where(size: sizer).where.not(time: nil).group(:user_id).order("time").limit(10)

      # Challenge.joins(:user).from(:user)
    # Challenge.joins(:user)

  end


end
