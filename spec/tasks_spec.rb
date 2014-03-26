require 'spec_helper'
require 'capybara/rspec'
require_relative ("../task_app")
Capybara.app = App

feature "Managing tasks" do
  scenario "User sees a Welcome homepage" do
    visit '/'
    click_on "Add a Task"
    fill_in "task", with: "Redraft silk shirt pattern"
    click_on "Create Task"
    expect(page).to have_content("Redraft silk shirt pattern")
  end
end