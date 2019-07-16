require './app/models/bookmark.rb'

describe Bookmark do

  describe "#list" do
    it "displays the list of saved bookmarks" do
      bookmarks = Bookmark.list
      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end
end
