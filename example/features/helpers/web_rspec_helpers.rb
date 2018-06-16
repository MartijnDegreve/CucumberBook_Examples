# features/helpers/web_rspec_helpers.rb
module RSpecHelpers

  def click_on_element(xpath)
    find(:xpath, xpath).click
  end

  def click_element_with_text(text)
    find_link(text).click
  end
  
  def click_first_element_with_xpath_text(text)
    page.find(:xpath, "(//*[text()='#{text}'])[1]").click
  end

  def click_element_with_xpath_text(text)
    page.find(:xpath, "//*[text()='#{text}']").click
  end
  
  def click_button_with_id(id)
    find_button(id).click
  end
  
  def click_button_with_text(text)
    find_button(text).click
  end
  
  def click_button_with_aria_label(label)
    page.find(:xpath, "//a[@aria-label='#{label}']").click
  end
  
  def fill_test_field_by_xpath(xpath, text_to_enter)
    fill_in xpath, :with => text_to_enter
  end
  
  def fill_text_field_by_id(field_id, text_to_enter)
    fill_in field_id, :with => text_to_enter
  end
  
  def empty_text_field_by_id(field_id)
    fill_in field_id, :with => ''
  end
  
  def find_element_with_xpath(xpath)
    find(:xpath, xpath)
  end
  
  def find_paragraph_with_text(text)
    page.find('p', :text => text)
  end
  
  def find_h5_header_with_text(text)
    page.find('h5', :text => text)
  end
  
  def find_list_item_with_text(text)
    page.find('li', :text => text)
  end
  
  def find_span_item_with_text(text_to_enter)
    page.find('span', :text => text_to_enter)
  end
end

