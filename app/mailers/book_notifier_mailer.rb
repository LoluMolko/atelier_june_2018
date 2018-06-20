class BookNotifierMailer < ApplicationMailer

  def book_return_remind(book)
    @book = book
    @reservation = book.reservations.find_by(status: 'TAKEN')
    @borrower = @reservation.user

    mail(to: @borrower.email, subject: "Please return #{@book.title}")
  end

  def book_reserved_return(book)
    @book = book
    @reservation = book.reservation.find_by(status: 'RESERVED')
  end
end
