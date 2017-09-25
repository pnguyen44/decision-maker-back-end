# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :mark, :editable, :list_id
  def editable
    scope == object.user
  end
end
