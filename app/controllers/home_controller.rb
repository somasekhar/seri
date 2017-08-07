class HomeController < ApplicationController
  def index
  	users = User.all.includes(posts: [:comments])
    render json: users, each_serializer: UserSerializer
  end
end
