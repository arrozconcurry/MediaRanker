require "test_helper"

describe WorksController do

  describe "book_index" do
    let(:book) {Work.where(category: "book")}
    it "is successful when there are many books" do
      book.count.must_be :>, 0
      get books_path
      must_respond_with :success
    end
  end

  describe "album_index" do
    let(:album) {Work.where(category: "album")}
    it "is successful when there are many books" do
      album.count.must_be :>, 0
      get albums_path
      must_respond_with :success
    end
  end

  describe "new" do
    it "runs successfully" do
      get new_work_path
      must_respond_with :success
    end
  end

  describe "show" do
    it "shows a work that exists" do
      skip
      work = Work.first
      get work_path(work)
      must_respond_with :success
    end
  end
end
