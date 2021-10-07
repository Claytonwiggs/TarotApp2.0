class User < ApplicationRecord
  def index
    users = User.all
    render json: users.as_json
  end

  def create
    user = User.new(
      username: params[:name]
    )
    user.save
    render json: user.as_json
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user.as_json
  end

  def update
    user = User.find_by(id: params[:id])
    user.name = params[:name] || user.name
    user.width = params[:width] || user.width
    user.height = params[:height] || user.height
    user.save
    render json: user.as_json
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "User successfully destroyed." }
  end
end
