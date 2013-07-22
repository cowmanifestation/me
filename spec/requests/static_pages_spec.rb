require 'spec_helper'

describe "StaticPages" do

  describe "About page" do
    it "should have h1 'About Chenoa'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Chenoa')
    end

    it "should have title 'About Chenoa'" do
      visit about_path
      page.should have_selector('title', :text => "Chenoa Siegenthaler | About")
    end
  end

  describe "Resume page" do
    it "should have h1 'Resume'" do
      visit resume_path
      page.should have_selector('h1', :text => 'Resume')
    end

    it "should have title 'Resume'" do
      visit resume_path
      page.should have_selector('title', :text => "Chenoa Siegenthaler | Resume")
    end
  end

  describe "Contact page" do
    it "should have h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text => "Chenoa Siegenthaler | Contact")
    end
  end
end
