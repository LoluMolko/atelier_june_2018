require 'rails_helper'

describe 'AppRouting' do
  it {
    expect(root: 'books', action: 'index')
  }

  it {
    expect(get: 'books/12/reserve').to route_to(controller: 'reservations', action: 'reserve', book_id: '12')
  }

  it {
    expect(get: reserve_book_path(book_id: 12)).to route_to(controller: 'reservations', action: 'reserve', book_id: '12')
  }

  it { 
    expect(get: give_back_book_path(book_id: 12)).to route_to(controller: 'reservations', action: 'give_back', book_id: '12')
  }

  it {
    expect(get: cancel_book_reservation_path(book_id: 12)).to route_to(controller: 'reservations', action: 'cancel', book_id: '12')
  }

  it {
    expect(get: users_reservations_path(user_id: 2)).to route_to(controller: 'reservations', action: 'users_reservations', user_id: '2')
  }

it {
  expect(get: 'google-isbn').to route_to(controller: 'google_books', action: 'show')
}

end



# get 'books/:book_id/reserve', to: 'reservations#reserve', as: 'reserve_book'
# get 'books/:book_id/give_back', to: 'reservations#give_back', as: 'give_back_book'
# get 'books/:book_id/cancel_reservation', to: 'reservations#cancel', as: 'cancel_book_reservation'
# get 'users/:user_id/reservations', to: 'reservations#users_reservations', as: 'users_reservations'
# get 'google-isbn', to: 'google_books#show'