require 'spec_helper'

describe Library do
  let(:book1) { Book.new("Ender's Game", "Orsen Scott Card", "science fiction") }
  let(:book2) { Book.new("To Kill a Mockingbird", "Harper Lee", "fiction") }
  let(:book3) { Book.new("1984", "George Orwell", "science fiction") }

  let(:library) { Library.new }

  describe "#add_book" do
    it "adds a book to the books array" do
      library.add_book(book1)

      expect(library.books[0].title).to include(book1.title)
    end
  end

  describe "#most_read_category" do
    it "to see which category we read most often" do
      library.add_book(book1)
      library.add_book(book2)
      library.add_book(book3)

      expect(library.most_read_category).to eq("science fiction")
    end
  end
end
