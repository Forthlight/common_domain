module CommonDomain
  module ApplicationHelper
    def footer_pages
      @pages = Administration::Page.all
    end
  end
end
