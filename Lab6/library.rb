class Library

  def initialize(customers)
    @customers = customers
  end

  def add_customer(customer)
    @customers.push(customer)
  end


  def fastest_to_find
    periods_of_finding = @customers.map do |customer|
      if customer.issue_date.nil?
        Float::INFINITY
      else
        customer.issue_date - customer.order_date
      end
    end

    periods_of_finding.min.to_i

  end

  def get_unsatisfied_orders_count
    counter = 0
    @customers.each do |customer|
      counter += 1 if customer.issue_date.nil?
    end

    counter
  end

  def get_most_active_user
    customers_orders_count = Hash.new(0)
    @customers.each do |customer|
      customers_orders_count[customer.name] += 1
    end

    customers_orders_count.max_by do |_, value|
      value
    end

  end

  def get_most_popular_book
    books_popularity = Hash.new(0)
    @customers.each do |customer|
      books_popularity[customer.book] += 1
    end

    books_popularity.max_by do |_, value|
      value
    end
  end

  def get_customers_of_popular_books_count
    books_popularity = Hash.new(0)
    @customers.each do |customer|
      books_popularity[customer.book] += 1
    end

    three_popular_books = books_popularity.sort_by(&:last)

    while three_popular_books.size > 3
      three_popular_books.shift
    end

    three_popular_books.map! do |book|
      book[0]
    end

    counter = 0
    @customers.each do |customer|
      counter += 1 if three_popular_books.include?(customer.book)
    end

    counter

  end
end
