module CommonDomain
  module AuthorHelper
    def find_author_name(id)
      user = Member::User.find(id)
      user.username
    end
  end
end