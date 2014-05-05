module CommonDomain
  module TextHelper
  	# Grabs text in the first paragraph and truncates it
    def truncate_to_paragraph(text, length=140)
      text = Nokogiri::HTML.parse(text).css('p').first.text
      truncate(text, length: length)
    end
  end
end

