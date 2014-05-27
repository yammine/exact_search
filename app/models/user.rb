class User < ActiveRecord::Base

  def self.exact_search(search_item)
    where(["first_name LIKE ? OR last_name LIKE ? OR email LIKE ?", search_item, search_item, search_item])
  end
end
