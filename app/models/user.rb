# frozen_string_literal: true
# class User < ApplicationRecord
#   include Authentication
#   has_many :examples
#   has_many :lists, inverse_of: :user
#   has_many :items, through: :lists
# end

# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :lists
  has_many :items, through: :lists
end
