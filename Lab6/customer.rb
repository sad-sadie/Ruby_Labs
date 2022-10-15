class Customer

  attr_accessor :name, :order_date, :issue_date, :book

  def initialize(name, order_date, issue_date, book)
    @name, @order_date, @issue_date, @book = name, order_date, issue_date, book
  end
end
