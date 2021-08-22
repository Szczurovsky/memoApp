class ChallengesController < ApplicationController


  def rank
    @challenges = Challenge.where(status: "poprawne")
    @challenges10 = User.best_result(10)
    @challenges20 = User.best_result(20)
    @challenges50 = User.best_result(50)
  end
  def challenge
    @size = params[:size] || 1
    @challenge = current_user.challenges.create :size=>@size.to_i, :number=>@size.to_i.times.map{rand(10)}.join

  end
  def destroy_all

  end
  def check

    @challenge_id = Challenge.find(params[:challenge_id])
    @result = params[:result]
    @challenge_id.update(status: "niepoprawne")
    @message = "Niestety tym razem pamięć Cię zawiodła"
    if @challenge_id.number == @result
      @challenge_id.time = Time.now - @challenge_id.created_at
      @challenge_id.update(time: @challenge_id.time)
      @challenge_id.status = "poprawne"
      @challenge_id.update(status: "poprawne")
      @message = "Udało sie poprawnie rozwiązać wyzwanie!"
    end

  end
end
