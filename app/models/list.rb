# frozen_string_literal: true
class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  validates :name, :user, presence: true
end
