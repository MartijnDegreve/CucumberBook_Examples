# features/step_definitions/steps.rb
Given("I am on the google search page") do
  @screen.search_page.visit_homepage
end

When("I search for Cucumber") do
  @screen.search_page.enter_search_term
  @screen.search_page.click_search_button
end

Then("I am able to find the Cucumber page") do
  @screen.search_results_page.click_on_search_result
  @screen.cucumber_homepage.check_if_navigated_to_homepage
end