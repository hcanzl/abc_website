require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_selector('h2', text: "Welcome to #{I18n.t("company.name")} webpage") }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
  end

  describe "About Page" do
    before { visit about_path }

    it { should have_selector('h2',    text: 'About Us') }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "Employee Page" do
    before { visit employee_path }

    it { should have_selector('h2', text: 'Welcome to the Employee Page') }
    it { should have_selector('title', text: full_title('Employee Page')) }
  end

  describe "Services Page" do
    before { visit services_path }

    it { should have_selector('h2',    text: 'Welcome to the Services Page') }
    it { should have_selector('title', text: full_title('Services')) }
  end

  describe "Customer Page" do
    before { visit customer_path }

    it { should have_selector('h2',    text: 'Welcome to the Customer Page') }
    it { should have_selector('title', text: full_title('Customer')) }
  end

  describe "Careers Page" do
    before { visit career_path }

    it { should have_selector('h2',    text: "Careers at #{I18n.t("company.name")}") }
    it { should have_selector('title', text: full_title('Careers')) }
  end

  describe "Admin Page" do
    before { visit administration_path }

    it { should have_selector('h2',    text: 'Welcome to the Administration Page') }
    it { should have_selector('title', text: full_title('Administration')) }
  end

  # Only testing the links from the home page with no logged in user
  before { visit root_path }
  {'Home' => '', 'About' => 'About Us', 'Contact Us' => 'Contact Us',
    'Employee Page' => 'Sign in', 'Customer' => 'Customer',
    'Services' => 'Services',"#{I18n.t("company.name")}" => ''}.each do |link, title|

    it "should have the right links on the layout" do
      click_link link
      page.should have_selector 'title', text: full_title(title)
    end
  end
end
