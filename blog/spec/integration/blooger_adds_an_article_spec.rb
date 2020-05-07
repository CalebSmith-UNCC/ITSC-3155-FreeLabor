require 'rails_helper.rb'

feature"Blogger adds an article" do
    scenario "Blogger successfully navigates to the new articles page from the listing articles page" do
        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "New article"
        expect(page).to have_content("New Article")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
    
    scenario "Blogger successfully creates a new article" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
    end
end

feature"Blogger Shows an article" do
    scenario "Blogger successfully navigates to the show article page from the listing articles page" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new capybara article"
        click_button "Create Article"
        expect(page). to have_content("New Capybara Article")
        expect(page). to have_content("This is a new capybara article")
        visit articles_path
        click_link "Show"
        expect(page). to have_content("New Capybara Article")
        expect(page). to have_content("This is a new capybara article")
    end
end

feature"Blogger Edit an article" do
    scenario "Blogger successfully navigates to the edit articles page from the listing articles page" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new capybara article"
        click_button "Create Article"
        expect(page). to have_content("New Capybara Article")
        expect(page). to have_content("This is a new capybara article")
        visit articles_path
        click_link "Edit"
        expect(page).to have_field("Title")
        expect(page). to have_field("Text")
    end
    
    scenario "Blogger successfully edits a new article" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new capybara article"
        click_button "Create Article"
        visit articles_path
        click_link "Edit"
        fill_in "Text", with: ""
        fill_in "Text", with: "This is the updated capybara article"
        click_button "Update Article"
        expect(page). to have_content("New Capybara Article")
        expect(page). to have_content("This is the updated capybara article")
    end
end


