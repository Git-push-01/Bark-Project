class LikesController < ApplicationController
  before_action :find_dog
  #find the dog by ID check to see if user_id is from a current_user

   def create
    @dog.likes.where(user_id: current_user.id).first_or_create
    redirect_to dog_path(@dog)
  end

  private
  def find_dog
    @dog = Dog.find(params[:dog_id])
  end


end
