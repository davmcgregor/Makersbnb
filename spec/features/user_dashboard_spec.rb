feature 'adding a user dashboard' do 
    scenario'a user visist the dashboard' do
    view_space

    click_on 'See my dashboard'
    expect(page).to have_content 'your dashboard'
    end
end