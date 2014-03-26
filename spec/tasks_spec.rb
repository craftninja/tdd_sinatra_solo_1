require 'spec_helper'
require 'capybara/rspec'
require_relative ("../task_app")
Capybara.app = App

feature "Managing tasks" do
  scenario "User sees a Welcome homepage" do
    visit '/'
    expect(page).to have_content("Welcome")
  end
end