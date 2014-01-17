require 'spec_helper'

describe "Statics" do
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home page" do
    it "should have the content 'Samp'" do
      visit '/static/home'
      expect(page).to have_content('Samp')
    end
    it "should have the base title" do
    	visit '/static/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should not have a custom page title" do
      visit '/static/home'
      expect(page).not_to have_title('| Home')
    end
  end
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
    	visit '/static/help'
    	expect(page).to have_title("#{base_title} | Help")
    end
  end
  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/static/about'
  		expect(page).to have_content('About Us')
  	end
  	it "should have the title 'About Us'" do
    	visit '/static/about'
    	expect(page).to have_title("#{base_title} | About Us")
    end
  end
  describe "Contact page" do
  	it "should have the content 'Contact'" do
  		visit '/static/contact'
  		expect(page).to have_content('Contact')
  	end
  	it "should have the title 'Contact'" do
  		visit '/static/contact'
  		expect(page).to have_title("#{base_title} | Contact")
  	end
  end
end
