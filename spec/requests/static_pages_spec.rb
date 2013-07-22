require 'spec_helper'

describe "StaticPages" do

  describe "About page" do
    before { visit about_path }

    it "should have h1 'About Chenoa'" do
      page.should have_selector('h1', :text => 'About Chenoa')
    end

    it "should have title 'About Chenoa'" do
      page.should have_selector('title', :text => "Chenoa Siegenthaler | About")
    end
  end

  describe "Resume page" do
    before { visit resume_path }

    it "should have h1 'Resume'" do
      page.should have_selector('h1', :text => 'Resume')
    end

    it "should have title 'Resume'" do
      page.should have_selector('title', :text => "Chenoa Siegenthaler | Resume")
    end
  end

  describe "Contact page" do
    before { visit contact_path }

    it "should have h1 'Contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have title 'Contact'" do
      page.should have_selector('title', :text => "Chenoa Siegenthaler | Contact")
    end
  end
end
