class Item < ApplicationRecord
  #attr_accessor :price, :name, :real, :weight, :description

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  # after_initialize { puts "initialize" }
  # after_save       { puts "save" }
  # after_create     { puts "create" }
  # after_update     { puts "update" }
  # after_destroy    { puts "destroy" }
end
