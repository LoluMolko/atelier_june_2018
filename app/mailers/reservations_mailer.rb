class ReservationsMailer < ActionMailer::Base
  default from: 'warsztaty@infakt.pl'

  def notify_about_reservation(user, book)
    @user = user
    @book = book

    mail(to: user.email, subject: "Book reserved")
  end
end