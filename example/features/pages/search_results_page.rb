# features\pages\search_results_page.rb
class SearchResultsPage < Screen
  include RSpecHelpers

  Search_result = "Cucumber"

  def click_on_search_result
    click_first_element_with_xpath_text(Search_result)
  end
end
