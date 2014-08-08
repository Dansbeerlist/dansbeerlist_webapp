require 'rails_helper'

  describe "Static pages" do

    describe "Home page" do

      it "should have the content '#dansbeerlist'" do
        visit '/static_pages/home'
        expect(page).to have_content('#dansbeerlist')
      end

      it "should have the title 'home'" do
        visit 'static_pages/home'
        expect(page).to have_title("dansbeerlist | home")
      end

    end

    describe "Help page" do

      it "should have the content 'help'" do
        visit '/static_pages/help'
        expect(page).to have_content('help')
      end

      it "should have the title 'help'" do
        visit 'static_pages/help'
        expect(page).to have_title("dansbeerlist | help")
      end
    end
    describe "About page" do
      it "should have the content 'about us'" do
        visit '/static_pages/about'
        expect(page).to have_content('about us')
      end
      it "should have the title 'about us'" do
        visit 'static_pages/about'
        expect(page).to have_title("dansbeerlist | about us")
      end
    end
  end