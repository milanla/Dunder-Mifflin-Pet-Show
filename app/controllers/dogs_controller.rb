class DogsController < ApplicationController
  def index
    if params[:query]
      @dogs = Dog.all.sort_by { |dog| dog.employees.count }.reverse
    else
      @dogs = Dog.all
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
