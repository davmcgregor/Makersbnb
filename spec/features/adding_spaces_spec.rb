feature 'adding a space' do
  scenario 'user completes spaces form' do
    visit '/'
    click_button 'Sign Up'
    fill_in('username', with: 'testusername123')
    fill_in('email', with: 'testusername123@gmail.com')
    fill_in('password', with: 'password123')
    click_button('Submit')

    visit '/spaces/new'
    fill_in :name, with: 'Madonnas cottage'
    fill_in :description, with: 'Beautiful cottage in the hills'
    fill_in :price, with: 1000
    fill_in :date_start, with:('20/01/2020')
    fill_in :date_end, with:('25/01/2020')
    click_on 'Add space'

    expect(current_path).to eq '/spaces'
    expect(page).to have_content 'Madonnas cottage'
    expect(page).to have_content 'Beautiful cottage in the hills'
    expect(page).to have_content '£1000 per night'
    expect(page).to have_content 'Available from 2020-01-20'
    expect(page).to have_content 'Available to 2020-01-25'
  end
end
