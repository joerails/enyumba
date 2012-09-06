require 'spec_helper'

describe "Static pages" do
 let(:base_title) { "enyumba.com" }

  describe "Home" do

    it "should have the h1 'home'" do
      visit root_path
      page.should have_selector('h1', text: 'home')
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title',
                        text: "#{base_title}")
    end
  end

  describe "renting" do

    it "should have the h1 'renting'" do
      visit renting_path
      page.should have_selector('h1', text: 'renting')
    end

    it "should have the title 'enyumba.com'" do
      visit renting_path
      page.should have_selector('title',
                        text: "#{base_title}")
    end
  end

  describe "landlord" do

    it "should have the h1 'landlord'" do
      visit landlord_path
      page.should have_selector('h1', text: 'landlord')
    end

    it "should have the title 'enyumba.com'" do
      visit landlord_path
      page.should have_selector('title',
                    text: "#{base_title}")
    end
  end

  describe "about " do

    it "should have the h1 'about'" do
      visit about_path
      page.should have_selector('h1', text: 'about')
    end

    it "should have the title 'about'" do
      visit about_path
      page.should have_selector('title',
                    text: "#{base_title}")
    end
  end

 describe "contact" do

    it "should have the h1 'contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'contact')
    end

    it "should have the title 'contact'" do
      visit contact_path
      page.should have_selector('title',
                    text: "#{base_title}")
    end
  end


describe "client_sign" do

    it "should have the h1 'client_sign'" do
      visit client_sign_path
      page.should have_selector('h1', text: 'client_sign')
    end

    it "should have the title 'client_sign '" do
      visit client_sign_path
      page.should have_selector('title',
                    text: "#{base_title}")
    end
  end

end


