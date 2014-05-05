module CommonDomain
  class InputSanitizer
    require 'sanitize'

    # Allowed html elements in input from tinymce
    ALLOWED_ELEM = %w[
      a abbr b blockquote br cite code dd dfn dl dt em i li mark ol p
      q s samp small strike strong sub sup time u ul h1 h2 h3 h4 h5 h6 code
    ]

    # Allowed html attributes in input from tinymce
    ALLOWED_ATTR = {
      :all => ["class", "style"],
      'a' => ['href', 'title'],
      'img' => ['alt', 'src', 'title']
    }

    # Allowed protocols for links
    ALLOWED_PROT = {
      'a' => {'href' => ['http', 'https', 'mailto']},
      'img' => {'src'  => ['http', 'https']}
    }

    ADD_ATTR = {
      'a' => {'rel' => 'nofollow'}
    }

    def sanitize_this(html)
      Sanitize.clean(html, :elements => ALLOWED_ELEM, :attributes => ALLOWED_ATTR, :protocols => ALLOWED_PROT, :add_attributes => ADD_ATTR)
    end
  end
end
