require 'spec_helper'

describe "Statics" do
  describe "Home page" do
    it "should have the content 'Samp'" do
      visit '/static/home'
      expect(page).to have_content('Samp')
    end
    it "should have the title 'Home'" do
    	visit '/static/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
    	visit '/static/help'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/static/about'
  		expect(page).to have_content('About Us')
  	end
  	it "should have the title 'About Us'" do
    	visit '/static/about'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
