require "rails_helper"
require 'support/session_helper'

feature "Article create" do 
  before(:each) do 
    sing_up
  end

  scenario "allows user to visit on article page" do 
    visit new_article_path
    expect(page).to have_content "New article"
  end
end