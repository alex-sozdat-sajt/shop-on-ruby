class ItemsController < ApplicationController
  def index

  end


  #/item/1 GET
  def show
      @item = Item.where(id: params[:id]).first
      render "items/show"
  end

  #/item/new GET
  def new
  end

  #/item/1/edit GET
  def edit
  end

#/item POST
def   create
#@item = Item.create(name: params[:name], description: params[:description], price: params[:price], real: params[:real], weight: params[:weight])

@item = Item.create(params[:item])
  render text: "#{@item.id}: #{@item.name} (#{!@item.new_record?})"
end

#/item/1 PUT
def update
end

#/item/1 DELETE
def destroy
end

end
