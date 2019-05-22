class Book
attr_reader :title, :author, :publication_year

  def initialize(info)
    @title = info[title]
    @author = info[author]
    @publication_year = info[publication_year]
  end

end
