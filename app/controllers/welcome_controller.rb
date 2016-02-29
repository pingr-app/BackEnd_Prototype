class WelcomeController < ApplicationController
  def index
    render json: {"message":"welcome to the pingr prototype API"}
  end
end
