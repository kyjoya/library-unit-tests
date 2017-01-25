class Library
  attr_reader :books
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def most_read_category
    categories = []

    @books.each do |book|
      categories << book.category
    end

    return categories.max_by { |x| categories.count(x) }
  end
end
