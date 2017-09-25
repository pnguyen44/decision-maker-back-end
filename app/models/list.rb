# class List < ApplicationRecord
# frozen_string_literal: true
#   belongs_to :user, foreign_key: 'user_id',inverse_of: :lists
#   has_many :items, foreign_key:'item_id', inverse_of: :lists
#   validates :name, :user, presence: true
#   validates_uniqueness_of :name
# end

# class List < ApplicationRecord
# frozen_string_literal: true
#  belongs_to :user, inverse_of: :lists
#  has_many :items,  foreign_key: 'list_id'
#  validates :name, :user, presence: true
#  validates_uniqueness_of :name
# end

# class List < ApplicationRecord
#   belongs_to :user, inverse_of: :lists
#   has_many :items, foreign_key: 'list_id'
#   validates :name, :user, presence: true
# end

class List < ApplicationRecord
  belongs_to :user
  has_many :items
  validates :name, :user, presence: true
end
