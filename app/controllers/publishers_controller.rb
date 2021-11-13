class PublishersController < ApplicationController
before_action :set_publisher, only: %i[ show edit update destroy ]
def index
  @publishers = Publisher.all
end

def show
end

def new
 @publisher = Publisher.new
end

def edit

end

def destroy

@publisher.destroy
redirect_to publishers_path

 end

def create
 @publisher = Publisher.new(publisher_params)

 if @publisher.save
redirect_to publisher_path(@publisher)
 else
    render 'new'
  end
end

def update
  if @publisher.update(publisher_params)
    redirect_to publisher_path(@publisher)
else
  render 'edit'
end
end


private
 def set_publisher
      @publisher = Publisher.find(params[:id])
    end


 def publisher_params
  params.require(:publisher).permit(:name, :country, :book_ids=>[])
 end
end