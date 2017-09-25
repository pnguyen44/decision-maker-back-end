# frozen_string_literal: true

class ItemsController < ProtectedController
  before_action :set_item, only: [:update, :destroy]
  # before_action :set_list, only: [:index]

  # GET /items
  def index
    @items = Item.all
    render json: @items
  end

  # GET /items/1
  def show
    render json: Item.find(params[:id])
  end
#
  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      # render json: @item
      head :no_content
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # def set_list
  #   @list = List.find(params[:list_id])
  # end

  # Only allow a trusted parameter "white list" through.
  def item_params
    params.require(:item).permit(:name, :mark, :list_id)
  end
end
