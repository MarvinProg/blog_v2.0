require "rails_helper"

feature "Create contact" do 
  scenario "allows acess to contacts page" do 
    # visit '/contacts'
    visit new_contacts_path
    
    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allows guest create contact" do 
    visit new_contacts_path

    fill_in :contact_email_journalist, with: 'ss@bb.ru'
    fill_in :contact_message_journalist, with: 'Aaa BBB ccC'

    click_button 'Save message'
    expect(page).to have_content 'Contacts#create'
  end
end