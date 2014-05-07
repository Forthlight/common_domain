module CommonDomain
  module AuthorHelper
    def find_author_name(id)
    	user = Member::User.find_by_id(id)

      unless user.blank?
      	user.username
      else
      	false
      end
    end
  end
end