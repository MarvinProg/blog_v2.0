require "rails_helper"

feature "Create contact" do 
  scenario "allows acess to contacts page" do 
    # visit '/contacts'
    visit new_contacts_path

    expect(page).to have_content 'Contacts us'
  end
end