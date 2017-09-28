# frozen_string_literal: true
class Item < ApplicationRecord
  belongs_to :list
  has_one :user, through: :list
  validates :name, presence: true
end
