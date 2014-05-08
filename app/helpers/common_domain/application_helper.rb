module CommonDomain
  module ApplicationHelper
  	def main_nav_pages
      @pages = Administration::Page.all.where(main: true).limit(3)
    end

    def footer_pages
      @pages = Administration::Page.all
    end
  end
end
