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

    def remove_chars(value)
      value.gsub(/&|\s+/, "")
    end
  end
end