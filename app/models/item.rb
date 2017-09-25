# frozen_string_literal: true
# class Item < ApplicationRecord
#   belongs_to :lists, foreign_key: 'list_id', inverse_of: :items
#   belongs_to :user, through: :lists
#   validates :name, presence: true
# end

# class Item < ApplicationRecord
#   belongs_to :list, inverse_of: :items
#   #belongs_to :user, inverse_of: :items
#   has_one :user, through: :list
#   validates :name, presence: true
# end

class Item < ApplicationRecord
  belongs_to :list
  has_one :user, through: :list
  validates :name, presence: true
end
