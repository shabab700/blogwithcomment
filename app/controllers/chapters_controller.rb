class ChaptersController< ApplicationController
  before_action :find_book

 def new 
  @chapter = Chapter.new
 end

 def show
   @chapter = Chapter.find(params[:id])
 end


  

 def create
   @chapter = Chapter.new(chapter_params)
   @chapter.book_id = @book.id
   if @chapter.save
   	redirect_to book_path(@book)
  else
    render 'new' 
  end
end

 private
  def chapter_params
   params.require(:chapter).permit(:title, :body)
  end
  def find_book
    @book = Book.find(params[:book_id])
  end

end
