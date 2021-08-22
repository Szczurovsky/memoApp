class UsersController < ApplicationController
  def index
    @test = User.best_result(20)
  end
end
