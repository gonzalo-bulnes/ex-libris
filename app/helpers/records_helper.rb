module RecordsHelper

  # Get the number of books a record has or should have
  #
  # record - The Record
  #
  # Example
  #
  #    %h1
  #      = "Record " + @record.id
  #      %small
  #        = number_of_books(@record) + " books"
  #    ...
  #
  # Returns a String of the greater Integer from record.number_of_books_estimate and record.books.count
  def number_of_books record
    # (record.number_of_books_estimate.to_i > record.books.count) ? \
    #   record.number_of_books_estimate : record.books.count
    record.books.count.to_s
  end
end
