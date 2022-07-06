def sing_up 
  visit new_user_registration_path

  # указывается id из инпута
  fill_in :user_email, :with => 'qwerty@qwe.ru'
  fill_in :user_username, :with => 'Ivan_123'
  fill_in :user_password, :with => '123456!'
  fill_in :user_password_confirmation, :with => '123456!'

  click_button 'Sign up'
end