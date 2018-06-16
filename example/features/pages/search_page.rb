# features\pages\search_page.rb
class SearchPage < Screen
  include RSpecHelpers

  Search_box = "lst-ib"
  Search_btn = "Google zoeken"

  def enter_search_term
    fill_text_field_by_id(Search_box, "Cucumber")
  end

  def click_search_button
    click_button_with_text(Search_btn)
  end

  def visit_homepage
    visit "http://www.google.com"
    click_element_with_text("ACCEPT")
  end
end
