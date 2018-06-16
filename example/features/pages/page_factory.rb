# features/pages/page_factory.rb
class EasyBanking

  def template_page
    @template_page ||= build_page(TemplatePage)
  end

  def search_page
    @search_page ||= build_page(SearchPage)
  end

  def search_results_page
    @search_results_page ||= build_page(SearchResultsPage)
  end

  def cucumber_homepage
    @cucumber_homepage ||= build_page(CucumberHomePage)
  end
end
