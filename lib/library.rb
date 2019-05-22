require 'pry'
class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end
  end

  def publication_time_frame_for(author)
    hash = {}
    first = author.books.min_by do |book|
      book.publication_year
    end
    last = author.books.max_by do |book|
      book.publication_year
    end
    # binding.pry
    hash[:start] = first.publication_year
    hash[:end] = last.publication_year
    hash
  end

end
