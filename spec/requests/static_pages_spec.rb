require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "ABC Inc. | Home")
    end

    it "should have the h1 'Home Page'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Welcome to ABC Inc. Home Page')
    end
  end

  describe "Help Page" do
    it "should have the title Help" do
      visit '/static_pages/help'
       page.should have_selector('title', :text => "ABC Inc. | Help")
    end

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
  end

  describe "About Page" do
    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
  end

  describe "Employee Page" do
    it "should have the content 'Welcome to the ABC Inc. Employee Page'" do
      visit '/static_pages/employee'
      page.should have_content('Welcome to the ABC Inc. Employee Page')
    end
  end

  describe "Customer Page" do
    it "should have the content 'Welcome to the Customer Page'" do
      visit '/static_pages/customer'
      page.should have_content('Welcome to the Customer Page')
    end
  end

  describe "Careers Page" do
    it "should have the content 'Careers at ABC Company'" do
      visit '/static_pages/career'
      page.should have_content('Careers at ABC Company')
    end
  end

  describe "Admin Page" do
    it "should have the content 'Welcome to the Admin Page'" do
      visit '/static_pages/administration'
      page.should have_content('Welcome to the Administration Page')
    end
  end

end
