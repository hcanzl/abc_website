require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Welcome!') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
  end

  describe "Help Page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help Page') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About Page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About Us') }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "Employee Page" do
    before { visit employee_path }

    it { should have_selector('h1', text: 'Welcome to the Employee Page') }
    it { should have_selector('title', text: full_title('Employee')) }
  end

  describe "Services Page" do
    before { visit services_path }

    it { should have_selector('h1',    text: 'Welcome to the Services Page') }
    it { should have_selector('title', text: full_title('Services')) }
  end

  describe "Customer Page" do
    before { visit customer_path }

    it { should have_selector('h1',    text: 'Welcome to the Customer Page') }
    it { should have_selector('title', text: full_title('Customer')) }
  end

  describe "Careers Page" do
    before { visit career_path }

    it { should have_selector('h1',    text: 'Careers at ABC Inc.') }
    it { should have_selector('title', text: full_title('Careers')) }
  end

  describe "Admin Page" do
    before { visit administration_path }

    it { should have_selector('h1',    text: 'Welcome to the Administration Page') }
    it { should have_selector('title', text: full_title('Administration')) }
  end

  # TODO remove <% provide statement in each view - debug full_title
  # Only testing the links from the home page
  before { visit root_path }
  {'Home' => '', 'About' => 'About', 'Help' => 'Help', 'Contact Us' => 'Contact',
    'Employee' => 'Employee', 'Customer' => 'Customer',
    'Services' => 'Services', 'Administration' => 'Admin', 'ABC Inc.' => ''}.each do |link, title|

    it "should have the right links on the layout" do
      click_link link
      page.should have_selector 'title', text: full_title(title)
    end
  end

end
