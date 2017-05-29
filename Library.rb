class Book
  @@onshelf = []
  @@onloan = []

  attr_accessor :due_date

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn.to_i
    @due_date = due_date
    @day = 0

  def self.create
    name = Book.new(title, author, isbn)
    @@onshelf << name     #shovel to onshelf
    name                   #return the new book
  end

  def lent_out?(title)     #return true if a book has already been borrowed
    if @@onloan.include?(title) == true
      true
    else
      false
    end
  end


  def borrow

  end

  def return_to_library()
    if lent_out? == true
      
    end
  end



  def self.current_due_date    #return the due date for books taken out today

                                # Time.now + 1814400 is 3 weeks from today
  end


  def self.overdue_books
#if time.now > due date
  end


  def self.browse #eturn a random book from @@on_shelf
    return @@on_shelf.sample
  end


  def self.available  #return the value of @@on_shelf
    return @@onshelf
  end


  def self.borrowed     #return the value of @@on_loan
    return @@onloan
  end





end


sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
