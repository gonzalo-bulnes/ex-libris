$ ->
  # New record book form

  # Hide after loading
  show_new_record_book_form = ()->
    console.log('record_books#show_new_book_form')
    $('#records-show #new-book').removeClass('hidden')

  hide_new_record_book_form = ()->
    console.log('record_books#hide_new_book_form')
    $('#records-show #new-book').addClass('hidden')

  show_add_record_book_button = ()->
    console.log('record_books#show_add_record_book_button')
    $('#records-show #add-record-book').removeClass('hidden')

  hide_add_record_book_button = ()->
    console.log('record_books#hide_add_record_book_button')
    $('#records-show #add-record-book').addClass('hidden')

  $('#add-record-book').on 'click', (event)->
    console.log('#add-record-book clicked')
    show_new_record_book_form()
    hide_add_record_book_button()
    event.preventDefault()

  $('#cancel-record-book-form').on 'click', (event)->
    console.log('#cancel-record-book-form clicked')
    hide_new_record_book_form()
    show_add_record_book_button()
    event.preventDefault()

  # Hide the new book after the page is loaded
  hide_new_record_book_form()
