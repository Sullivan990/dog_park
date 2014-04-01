class OwnersController < ApplicationController

  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(params.require(:owner).permit(:first_name, :last_name, :email, :dog_name))

    if @owner.save
      redirect_to @owner, notice: 'Owner was successfully registered!'
    else
      render action: 'new'
    end
  end

end
