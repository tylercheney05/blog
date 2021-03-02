class PagesController < ApplicationController
  def index
    @pages = Page.all
    render component: 'Pages', props: { pages: @pages }
  end
  def show
    @page = Page.find(params[:id])
    render component: 'Page', props: { page: @page }
  end
  def new
    @page = Page.new 
    render component: 'PageNew', props: { page: @page }
  end
  def create 
    @page = Page.new(pages_params)
    if @page.save
      redirect_to pages_path
    else
      render component: 'PageNew', props: { page: @page }
    end
  end
  def edit
  end
  private
    def pages_params
      params.require(:page).permit(:title, :author, :body)
    end
end