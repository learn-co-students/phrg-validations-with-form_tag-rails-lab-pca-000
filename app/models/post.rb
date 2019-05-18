# frozen_string_literal: true

class Post < ActiveRecord::Base
  validates :title, length: { minimum: 2 }
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
end
