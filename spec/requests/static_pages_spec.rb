require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  # Why not just this?
  #base_title = "Ruby on Rails Tutorial Sample App"
  # It passes the tests:
  #  C:\Sites\sample_app>bundle exec rspec spec/requests/static_pages_spec.rb
  #  ←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m
  #  
  #  Finished in 0.30802 seconds
  #  ←[32m8 examples, 0 failures←[0m
  #  
  #  C:\Sites\sample_app>bundle exec rspec spec/requests/static_pages_spec.rb
  #  ←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m←[32m.←[0m
  #  
  #  Finished in 0.35302 seconds
  #  ←[32m8 examples, 0 failures←[0m
  

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{base_title} | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "#{base_title} | Contact")
    end
  end
end
