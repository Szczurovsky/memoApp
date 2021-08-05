class ChallengesController < ApplicationController


  def create
  end
  def challenge
    @size = params[:size] || 1
    @challenge = current_user.challenges.create :size=>@size.to_i, :number=>@size.to_i.times.map{rand(10)}.join

  end
  def check

    @challenge_id = Challenge.find(params[:challenge_id])
    @result = params[:result]
    if @challenge_id.number == @result
      @challenge_id.time = Time.now - @challenge_id.created_at
      @challenge_id.status = "poprawne"
    end

  end
end
