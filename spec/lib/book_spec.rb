require 'spec_helper'
describe Book do
  let(:book1) { Book.new("Ender's Game", "Orsen Scott Card", "science fiction") }
  let(:book2) { Book.new("To Kill a Mockingbird", "Harper Lee", "fiction") }

  describe "#new" do
    it "can create a new book" do
      expect(book1).to be_a(Book)
    end
  end

  describe "#title" do
    it "can show me the title of a book" do
      expect(book1.title).to eq("Ender's Game")
    end
  end

  describe "#author" do
    it "can show me the author of the book" do
      expect(book2.author).to eq("Harper Lee")
    end
  end

  describe "#category" do
    it "can show me the category of a book" do
      expect(book1.category).to eq("science fiction")
    end
  end
end
