require 'dry_helper'

feature 'A request booking is sent to a property owner' do
  scenario 'user sees a request booking link' do
    populate_properties
    create_user_sign_in
    expect(page).to have_link('Request a booking', href: '/request_sent')
  end

  scenario 'Clicking the link returns request sent message' do
    populate_properties
    create_user_sign_in
    click_link "Request a booking"
    expect(page).to have_content("Booking request sent")
  end
end
