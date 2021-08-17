class UsersController < ApplicationController
  def index
    @test = User.best_result(current_user,20)
  end
end
