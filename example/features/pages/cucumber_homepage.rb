# features\pages\cucumber_homepage.rb
class CucumberHomePage < Screen
  include RSpecHelpers

  # In order to check if we've navigated to a page, we look for a unique identifier on that page
  # For this example I'm using the cucumber image in the top left of the page 
  # This is an image with an 'Cucumber' as an alt tag.
  # In order to understand Xpath selectors, go to https://devhints.io/xpath

  Cucumber_img = '//img[@alt="Cucumber"]'

  def check_if_navigated_to_homepage
    find_element_with_xpath Cucumber_img
  end
end
