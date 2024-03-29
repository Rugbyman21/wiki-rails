class TypesController < ApplicationController
  def index
    @types = Type.all
    render :index
  end

  def show
    @type = Type.find(params[:id])
    render :show
  end

  def new
    @type = Type.new
    render :new
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to types_path
    else
      render :new
    end
  end

  def delete
    @type = Type.find(params[:id])
  end

  def destroy
    @type = Type.find(params[:id])
    @type.destroy
    redirect_to types_path
  end

  def edit
    @type = Type.find(params[:id])
    render :edit
  end

  def update
    @type = Type.find(params[:id])
    @type.update(type_params)
    if @type.save
      redirect_to types_path
    else
      render :edit
    end     
  end

  private
    def type_params
      params.require(:type).permit(:name)
    end
end
