# features/support/hooks.rb
Before do |scenario|
  begin
    @screen = build_page(EasyBanking)
  rescue
    puts 'Not able to build the page factory'
  end
end

After do |scenario|
  begin
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    Capybara.reset_sessions!
  rescue
    puts 'Unable to reset the session'
  end
end
