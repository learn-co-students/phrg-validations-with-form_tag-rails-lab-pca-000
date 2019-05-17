# frozen_string_literal: true

class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 150 }
  validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
end
