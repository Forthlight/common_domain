module CommonDomain
  module FormHelper
    def is_checked?(checked, value)
      if checked.present?
        if checked.include?(value)
          true
        else
          false
        end
      else
        true
      end
    end

    # Remove characters unsuitable for input name and id
    def remove_chars(value)
      value.gsub(/&|\s+/, "")
    end

    # Restore whitespace where needed (replaces underscore)
    def restore_whitespace(value)
      unless value.blank?
        value.gsub(/_+/, " ")
      end
    end
  end
end