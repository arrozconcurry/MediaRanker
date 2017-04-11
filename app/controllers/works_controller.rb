class WorksController < ApplicationController
  # View media by category
  def index
      @works = Work.all
  end

  def movie_index
    # @movies = Work[category: movie]
  end

  def book_index
    # @books = Work[category: book]
  end

  def album_index
    @albums = Work.where(category: "album")
  end

  def show
    @work = Work.find(params[:id])
  end

end
